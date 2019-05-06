#include <stdio.h>
#include "minimallib.h"

#define S_OK (0)
#define E_FAIL (-1)


int test_sum() {

	if (sum(2, 3) != 5)
        return E_FAIL;

	return S_OK;
}


int run_tests() {
	if (test_sum() == E_FAIL) {
		printf("Failed test_sum()\n");
		return E_FAIL;
	}

	return S_OK;
}


int main() {

	int result;

	printf("Running tests... \n");
	result = run_tests();

	if (result == S_OK) 
		printf ("Tests passed.\n");
	else
		printf ("Tests failed.\n");

    return result;
}

