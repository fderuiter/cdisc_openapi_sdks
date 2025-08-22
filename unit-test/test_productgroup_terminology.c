#ifndef productgroup_terminology_TEST
#define productgroup_terminology_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_terminology_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_terminology.h"
productgroup_terminology_t* instantiate_productgroup_terminology(int include_optional);

#include "test_productgroup_terminology_links.c"


productgroup_terminology_t* instantiate_productgroup_terminology(int include_optional) {
  productgroup_terminology_t* productgroup_terminology = NULL;
  if (include_optional) {
    productgroup_terminology = productgroup_terminology_create(
       // false, not to have infinite recursion
      instantiate_productgroup_terminology_links(0)
    );
  } else {
    productgroup_terminology = productgroup_terminology_create(
      NULL
    );
  }

  return productgroup_terminology;
}


#ifdef productgroup_terminology_MAIN

void test_productgroup_terminology(int include_optional) {
    productgroup_terminology_t* productgroup_terminology_1 = instantiate_productgroup_terminology(include_optional);

	cJSON* jsonproductgroup_terminology_1 = productgroup_terminology_convertToJSON(productgroup_terminology_1);
	printf("productgroup_terminology :\n%s\n", cJSON_Print(jsonproductgroup_terminology_1));
	productgroup_terminology_t* productgroup_terminology_2 = productgroup_terminology_parseFromJSON(jsonproductgroup_terminology_1);
	cJSON* jsonproductgroup_terminology_2 = productgroup_terminology_convertToJSON(productgroup_terminology_2);
	printf("repeating productgroup_terminology:\n%s\n", cJSON_Print(jsonproductgroup_terminology_2));
}

int main() {
  test_productgroup_terminology(1);
  test_productgroup_terminology(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_terminology_MAIN
#endif // productgroup_terminology_TEST
