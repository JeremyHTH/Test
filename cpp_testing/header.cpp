#include <iostream>
#include "header.h"
using namespace std;

testing::testing()
{
    a = 9;
    b = 66;
}

void testing::outputA()
{
    cout << "the integer is " << a << endl;

}

void testing::outputB()
{
    cout << "the character is " << b << endl;
}