#include <iostream>
#include <example1/example1.h>
#include "example2.h"

void print_example2() {
    std::cout << "example2" << std::endl;
    print_example1();
}
