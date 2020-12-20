// for test
#include "hyh.hpp"
#include <iostream>

using namespace std;

class Gass {
    public:
        int get(int);
    private:
        int m;
};

void get(int a) {
    Gass gass;
    gass.get(1);

    cout << "test" <<endl;
}
