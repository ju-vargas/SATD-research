#include <iostream>
#include <math.h>
#include <fstream>
#include <sstream>
#include <iomanip>

using namespace std;

int main() {

  int k, i, j, jj, sad = 0;
  int diff[32], m1[8][4], m2[8][4];

  int index = 0;

  std::ifstream file("num.txt");
  if (file.is_open()) {
      std::string line;
      while (std::getline(file, line) && index < 32) {
          std::stringstream ss(line);
          int number;
          while (ss >> number) {
              diff[index] = number;
              ++index;
              ss.ignore();
          }
      }
      file.close();
  } else {
      std::cout << "Unable to open the file." << std::endl;
      return 1;
  }


  //horizontal
  for( j = 0; j < 8; j++ )
  {
    jj = j << 2;
    m2[j][0] = diff[jj] + diff[jj + 2];
    m2[j][1] = diff[jj + 1] + diff[jj + 3];
    m2[j][2] = diff[jj] - diff[jj + 2];
    m2[j][3] = diff[jj + 1] - diff[jj + 3];

    m1[j][0] = m2[j][0] + m2[j][1];
    m1[j][1] = m2[j][0] - m2[j][1];
    m1[j][2] = m2[j][2] + m2[j][3];
    m1[j][3] = m2[j][2] - m2[j][3];
  }

  //vertical
  for( i = 0; i < 4; i++ )
  {
    m2[0][i] = m1[0][i] + m1[4][i];
    m2[1][i] = m1[1][i] + m1[5][i];
    m2[2][i] = m1[2][i] + m1[6][i];
    m2[3][i] = m1[3][i] + m1[7][i];
    m2[4][i] = m1[0][i] - m1[4][i];
    m2[5][i] = m1[1][i] - m1[5][i];
    m2[6][i] = m1[2][i] - m1[6][i];
    m2[7][i] = m1[3][i] - m1[7][i];

    m1[0][i] = m2[0][i] + m2[2][i];
    m1[1][i] = m2[1][i] + m2[3][i];
    m1[2][i] = m2[0][i] - m2[2][i];
    m1[3][i] = m2[1][i] - m2[3][i];
    m1[4][i] = m2[4][i] + m2[6][i];
    m1[5][i] = m2[5][i] + m2[7][i];
    m1[6][i] = m2[4][i] - m2[6][i];
    m1[7][i] = m2[5][i] - m2[7][i];

    m2[0][i] = m1[0][i] + m1[1][i];
    m2[1][i] = m1[0][i] - m1[1][i];
    m2[2][i] = m1[2][i] + m1[3][i];
    m2[3][i] = m1[2][i] - m1[3][i];
    m2[4][i] = m1[4][i] + m1[5][i];
    m2[5][i] = m1[4][i] - m1[5][i];
    m2[6][i] = m1[6][i] + m1[7][i];
    m2[7][i] = m1[6][i] - m1[7][i];
    
  }

  // Set the width for each printed element
  int elementWidth = 5;
  // Print the matrix with aligned output
  for (int i = 0; i < 8; ++i) {
      for (int j = 0; j < 4; ++j) {
          std::cout << std::setw(elementWidth) << m2[i][j];
      }
      std::cout << "\n";
  }



  for( i = 0; i < 8; i++ )
  {
    for( j = 0; j < 4; j++ )
    {
      sad += abs( m1[i][j] );
    }
  }

  sad  = ( int ) ( sad / sqrt( 4.0 * 8 ) * 2 );

  cout << sad;
}
