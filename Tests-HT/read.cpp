#include <iostream>
#include <fstream>
#include <sstream>

int main() {
    int diff[32];
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

    for (int i = 0; i < 32; ++i) {
        std::cout << diff[i] << " ";
    }

    return 0;
}
