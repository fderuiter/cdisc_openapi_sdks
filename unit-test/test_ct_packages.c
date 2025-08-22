#ifndef ct_packages_TEST
#define ct_packages_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_packages_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_packages.h"
ct_packages_t* instantiate_ct_packages(int include_optional);

#include "test_ct_packages_links.c"


ct_packages_t* instantiate_ct_packages(int include_optional) {
  ct_packages_t* ct_packages = NULL;
  if (include_optional) {
    ct_packages = ct_packages_create(
       // false, not to have infinite recursion
      instantiate_ct_packages_links(0)
    );
  } else {
    ct_packages = ct_packages_create(
      NULL
    );
  }

  return ct_packages;
}


#ifdef ct_packages_MAIN

void test_ct_packages(int include_optional) {
    ct_packages_t* ct_packages_1 = instantiate_ct_packages(include_optional);

	cJSON* jsonct_packages_1 = ct_packages_convertToJSON(ct_packages_1);
	printf("ct_packages :\n%s\n", cJSON_Print(jsonct_packages_1));
	ct_packages_t* ct_packages_2 = ct_packages_parseFromJSON(jsonct_packages_1);
	cJSON* jsonct_packages_2 = ct_packages_convertToJSON(ct_packages_2);
	printf("repeating ct_packages:\n%s\n", cJSON_Print(jsonct_packages_2));
}

int main() {
  test_ct_packages(1);
  test_ct_packages(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_packages_MAIN
#endif // ct_packages_TEST
