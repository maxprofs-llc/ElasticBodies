#include <iostream>
#include <vector>
#include <pthread.h>
#include <fstream>
#include <string>
#include <math.h>
#include <lbfgs.h>
#include <set>
#include "Eigen/SPQRSupport"
#include <Eigen/CholmodSupport>

#include "simulation.h"
#include "globals.h"



using namespace Eigen;
using namespace std;
typedef Eigen::Triplet<double> Trip;
typedef Matrix<double, 12, 1> Vector12d;

Simulation::Simulation(void){}

int Simulation::initializeSimulation(double deltaT, int iterations, char method, MatrixXi& TT, MatrixXd& TV, MatrixXd& B, vector<int>& moveVertices){
	iters = iterations;
	B = B;
	if (method =='e'){
		integrator = new Verlet();
		cout<<"Initialized Verlet"<<endl;	
	}else if(method == 'i'){
		integrator = new ImplicitEuler();
		cout<<"Initialized Implicit Euler"<<endl;
	}
	else if(method == 'n'){
		integrator = new ImplicitNewmark();
		cout<<"Initialized Implicit Newmark"<<endl;
	}
	else{
		cout<<"Method not supported yet"<<endl;
		exit(0);
	}

	// reIndexClampedVertices(moveVertices, TV, TT);

	//Initialize Solid Mesh
	M.initializeMesh(TT, TV);
	
	// setInitPosition(moveVertices, TV, TT);

	integrator->initializeIntegrator(deltaT, M, TV, TT);

	return 1;
}

void Simulation::headless(){
	while(integrator->simTime<iters){
		integrator->render();
	}
}
void Simulation::render(){
	integrator->render();
}

int Simulation::reIndexClampedVertices(vector<int>& moveVertices, MatrixXd& TV, MatrixXi& TT){
	//Re-index clamped vertices
	for(int i=0; i<moveVertices.size(); i++){
		//re-index vertices
		//take TV row at index moveVertices(i)
		//replace with TV row at index TV.rows - (moveVertices.size() -i)
		//Vector3d ro1 = TV.row(moveVertices(i));
		Vector3d ro2 = TV.row(TV.rows() - moveVertices.size()+ i);
		TV.row(TV.rows() - moveVertices.size()+ i) = TV.row(moveVertices[i]);
		TV.row(moveVertices[i]) = ro2;

		//re-index all the tet pointers
		int v1 = moveVertices[i];
		int v2 = TV.rows() - moveVertices.size() +i;
		for(int k=0; k< TT.rows(); k++){
			for(int j=0; j<4; j++){
				if (TT.row(k)[j]== v1){
					TT.row(k)[j] = v2;
				}else if(TT.row(k)[j]==v2){
					TT.row(k)[j] = v1;
				}
			}
		}
	}

	return 1;
}

void Simulation::setTVtoX(VectorXd &x, MatrixXd &TV){
	//TV to X
	for(unsigned int i = 0; i < M.tets.size(); i++){
		Vector4i indices = M.tets[i].verticesIndex;

		x(3*indices(0)) = TV.row(indices(0))[0];
		x(3*indices(0)+1) = TV.row(indices(0))[1];
		x(3*indices(0)+2) = TV.row(indices(0))[2];

		x(3*indices(1)) = TV.row(indices(1))[0];
		x(3*indices(1)+1) = TV.row(indices(1))[1];
		x(3*indices(1)+2) = TV.row(indices(1))[2];

		x(3*indices(2)) = TV.row(indices(2))[0];
		x(3*indices(2)+1) = TV.row(indices(2))[1];
		x(3*indices(2)+2) = TV.row(indices(2))[2];

		x(3*indices(3)) = TV.row(indices(3))[0];
		x(3*indices(3)+1) = TV.row(indices(3))[1];
		x(3*indices(3)+2) = TV.row(indices(3))[2];
	}
	return;
}

void Simulation::calculateElasticForces(VectorXd &f, MatrixXd& TV){
	//elastic
	for(unsigned int i=0; i< M.tets.size(); i++){
		Vector4i indices = M.tets[i].verticesIndex;
		MatrixXd F_tet = M.tets[i].computeElasticForces(TV, 1);
		f.segment<3>(3*indices(0)) += F_tet.col(0);
		f.segment<3>(3*indices(1)) += F_tet.col(1);
		f.segment<3>(3*indices(2)) += F_tet.col(2);
		f.segment<3>(3*indices(3)) += F_tet.col(3);
	}
	return;
}

void Simulation::calculateForceGradient(MatrixXd &TVk, SparseMatrix<double>& forceGradient){
	forceGradient.setZero();
	
	vector<Trip> triplets1;
	triplets1.reserve(3*TVk.rows()*3*TVk.rows());	
	for(unsigned int i=0; i<M.tets.size(); i++){
		//Get P(dxn), dx = [1,0, 0...], then [0,1,0,....], and so on... for all 4 vert's x, y, z
		//P is the compute Force Differentials blackbox fxn

		Vector12d dx(12);
		dx.setZero();
		Vector4i indices = M.tets[i].verticesIndex;
		int kj;
		for(unsigned int j=0; j<12; j++){
			dx(j) = 1;
			MatrixXd dForces = M.tets[i].computeForceDifferentials(TVk, dx);
			kj = j%3;
			//row in order for dfxi/dxi ..dfxi/dzl
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[0], dForces(0,0)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[0]+1, dForces(1,0)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[0]+2, dForces(2,0)));

			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[1], dForces(0,1)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[1]+1, dForces(1,1)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[1]+2, dForces(2,1)));

			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[2], dForces(0,2)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[2]+1, dForces(1,2)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[2]+2, dForces(2,2)));

			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[3], dForces(0,3)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[3]+1, dForces(1,3)));
			triplets1.push_back(Trip(3*indices[j/3]+kj, 3*indices[3]+2, dForces(2,3)));
			dx(j) = 0; //ASK check is this efficient?
		}
	}
	forceGradient.setFromTriplets(triplets1.begin(), triplets1.end());
	return;
}

void Simulation::setInitPosition(vector<int> moveVertices, MatrixXd& TV, MatrixXi& TT){	
	//Move vertices slightly
	for(int i=0; i<moveVertices.size(); i++){
		TV.row(moveVertices[i])[1]+=1;
	}
	cout<<TT<<endl;
	cout<<TV<<endl;
	cout<<"-----"<<endl;
	//Newtons method static solve for minimum Strain E
	double strainE;
	SparseMatrix<double> forceGradient;
	forceGradient.resize(3*TV.rows(), 3*TV.rows());
	SparseMatrix<double> forceGradientStaticBlock;
	forceGradientStaticBlock.resize(3*(TV.rows() - moveVertices.size()), 3*(TV.rows() - moveVertices.size()));
	VectorXd f, x;
	f.resize(3*TV.rows());
	f.setZero();
	x.resize(3*TV.rows());
	x.setZero();
	setTVtoX(x, TV);
	cout<<TT<<endl;
	cout<<TV<<endl;
	cout<<x<<endl;
	// exit(0);
	int NEWTON_MAX = 10, k=0;
	for(k=0; k<NEWTON_MAX; k++){
		// X to TV
		TV.setZero();
		for(unsigned int i=0; i < M.tets.size(); i++){
			Vector4i indices = M.tets[i].verticesIndex;
			TV.row(indices(0)) = Vector3d(x(3*indices(0)), x(3*indices(0)+1), x(3*indices(0) +2));
			TV.row(indices(1)) = Vector3d(x(3*indices(1)), x(3*indices(1)+1), x(3*indices(1) +2));
			TV.row(indices(2)) = Vector3d(x(3*indices(2)), x(3*indices(2)+1), x(3*indices(2) +2));
			TV.row(indices(3)) = Vector3d(x(3*indices(3)), x(3*indices(3)+1), x(3*indices(3) +2)); 
		}
		calculateForceGradient(TV, forceGradient);
		calculateElasticForces(f, TV);

		//Block forceGrad and f to exclude the fixed verts
		forceGradientStaticBlock = forceGradient.block(0,0,(TV.rows() - moveVertices.size())*3, 3*(TV.rows() - moveVertices.size()));


		//Sparse QR 
		SparseQR<SparseMatrix<double>, COLAMDOrdering<int>> sqr;
		sqr.compute(forceGradientStaticBlock);
		VectorXd deltaX = -1*sqr.solve(f.head((TV.rows() - moveVertices.size())*3));

		x+=deltaX;

		if(x != x){
			cout<<"NAN"<<endl;
			exit(0);
		}
		if (f.squaredNorm() < 0.00001){
			break;
		}
	}
	if(k== NEWTON_MAX){
		cout<<"ERROR Static Solve: Newton max reached"<<endl;
		cout<<k<<endl;
		exit(0);
	}
	cout<<"Forces"<<endl;
	cout<<f<<endl;
	cout<<"Strain E"<<endl;
	cout<<strainE<<endl;
	exit(0);
}
