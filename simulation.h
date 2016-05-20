#ifndef SIMULATION__H
#define SIMULATION__H

#include <Eigen/Core>
#include <Eigen/Sparse>
#include <iostream>
#include <vector>
#include <pthread.h>
#include <math.h>



#include "Verlet.h"
#include "ImplicitEuler.h"
#include "ImplicitNewmark.h"


using namespace Eigen;
using namespace std;

class Simulation{

public:
	SolidMesh M;
	IntegratorAbstract* integrator;
	vector<int> mapV2TV;
	int iters;
	MatrixXd B;

	Simulation(void);
	int initializeSimulation(double deltaT, int iterations, char method, MatrixXi& TT, MatrixXd& TV, MatrixXd& B);
	void setInitPosition(vector<int> moveVertices);
	int reIndexClampedVertices(vector<int>& moveVertices);
	void headless();
	void render();

};

#endif