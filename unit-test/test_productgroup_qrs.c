#ifndef productgroup_qrs_TEST
#define productgroup_qrs_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_qrs_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_qrs.h"
productgroup_qrs_t* instantiate_productgroup_qrs(int include_optional);

#include "test_productgroup_qrs_links.c"


productgroup_qrs_t* instantiate_productgroup_qrs(int include_optional) {
  productgroup_qrs_t* productgroup_qrs = NULL;
  if (include_optional) {
    productgroup_qrs = productgroup_qrs_create(
       // false, not to have infinite recursion
      instantiate_productgroup_qrs_links(0)
    );
  } else {
    productgroup_qrs = productgroup_qrs_create(
      NULL
    );
  }

  return productgroup_qrs;
}


#ifdef productgroup_qrs_MAIN

void test_productgroup_qrs(int include_optional) {
    productgroup_qrs_t* productgroup_qrs_1 = instantiate_productgroup_qrs(include_optional);

	cJSON* jsonproductgroup_qrs_1 = productgroup_qrs_convertToJSON(productgroup_qrs_1);
	printf("productgroup_qrs :\n%s\n", cJSON_Print(jsonproductgroup_qrs_1));
	productgroup_qrs_t* productgroup_qrs_2 = productgroup_qrs_parseFromJSON(jsonproductgroup_qrs_1);
	cJSON* jsonproductgroup_qrs_2 = productgroup_qrs_convertToJSON(productgroup_qrs_2);
	printf("repeating productgroup_qrs:\n%s\n", cJSON_Print(jsonproductgroup_qrs_2));
}

int main() {
  test_productgroup_qrs(1);
  test_productgroup_qrs(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_qrs_MAIN
#endif // productgroup_qrs_TEST
