#include "math.hpp"

namespace umbrella{
namespace math{

template <typename T>
T add(T __a1, T __a2){
	return __a1 + __a2;
};

template
int add(int, int);

template
double add(double, double);

template
long add(long, long);

}
}
