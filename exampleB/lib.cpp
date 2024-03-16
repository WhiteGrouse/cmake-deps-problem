#include <iostream>
#include <exampleC/exampleC.h>
#include "exampleB.h"

void print_exampleB() {
    std::cout << "exampleB" << std::endl;
    print_exampleC();
}
