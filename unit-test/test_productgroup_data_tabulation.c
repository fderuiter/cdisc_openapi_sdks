#ifndef productgroup_data_tabulation_TEST
#define productgroup_data_tabulation_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_data_tabulation_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_data_tabulation.h"
productgroup_data_tabulation_t* instantiate_productgroup_data_tabulation(int include_optional);

#include "test_productgroup_data_tabulation_links.c"


productgroup_data_tabulation_t* instantiate_productgroup_data_tabulation(int include_optional) {
  productgroup_data_tabulation_t* productgroup_data_tabulation = NULL;
  if (include_optional) {
    productgroup_data_tabulation = productgroup_data_tabulation_create(
       // false, not to have infinite recursion
      instantiate_productgroup_data_tabulation_links(0)
    );
  } else {
    productgroup_data_tabulation = productgroup_data_tabulation_create(
      NULL
    );
  }

  return productgroup_data_tabulation;
}


#ifdef productgroup_data_tabulation_MAIN

void test_productgroup_data_tabulation(int include_optional) {
    productgroup_data_tabulation_t* productgroup_data_tabulation_1 = instantiate_productgroup_data_tabulation(include_optional);

	cJSON* jsonproductgroup_data_tabulation_1 = productgroup_data_tabulation_convertToJSON(productgroup_data_tabulation_1);
	printf("productgroup_data_tabulation :\n%s\n", cJSON_Print(jsonproductgroup_data_tabulation_1));
	productgroup_data_tabulation_t* productgroup_data_tabulation_2 = productgroup_data_tabulation_parseFromJSON(jsonproductgroup_data_tabulation_1);
	cJSON* jsonproductgroup_data_tabulation_2 = productgroup_data_tabulation_convertToJSON(productgroup_data_tabulation_2);
	printf("repeating productgroup_data_tabulation:\n%s\n", cJSON_Print(jsonproductgroup_data_tabulation_2));
}

int main() {
  test_productgroup_data_tabulation(1);
  test_productgroup_data_tabulation(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_data_tabulation_MAIN
#endif // productgroup_data_tabulation_TEST
