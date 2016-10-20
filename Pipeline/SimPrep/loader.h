#pragma once

#include <iostream>
#include <fstream>
#include <string>
#include <glm/glm.hpp>
#include "mesh.h"

#define MAX_LINE_LENGTH 1024

using namespace std;

class Loader {
public:

  static void loadMesh(Mesh* mesh, char* file) {
    ifstream ifs = open(file);
    char line[MAX_LINE_LENGTH];

    while (ifs.peek() != EOF) {
      ifs.getline(line, sizeof(line), '\n');
      const char* token = line + strspn(line, " \t");

      if (token[0] == 0) continue;
      if (token[0] == 'v' && isSpace(token[1])) parseVert(mesh, token += 2);
      if (token[0] == 'f' && isSpace(token[1])) parseFace(mesh, token += 2);
    }

    ifs.close();
  }

  static bool isSpace(char token) {
    return token == ' ';
  }

  static void parseVert(Mesh* mesh, char* token) {
    vec3 vert(0.0f,0.0f,0.0f);
    int ind = 0;
    while (token != NULL && ind != 3)
    {
      vert[ind] = atof(token);
      ind++;
      token = strtok(token, " ");
    }
    mesh->addVert(vert);
  }

  static void parseFace(Mesh* mesh, char* token) {
    ivec4 face(0, 0, 0, 0);
    int ind = 0;
    while (token != NULL && ind != 4)
    {
      vert[ind] = atoi(token);
      ind++;
      token = strtok(token, " ");
    }
    mesh->addFace(face);
  }
};
