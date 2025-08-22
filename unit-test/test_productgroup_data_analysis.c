#ifndef productgroup_data_analysis_TEST
#define productgroup_data_analysis_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_data_analysis_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_data_analysis.h"
productgroup_data_analysis_t* instantiate_productgroup_data_analysis(int include_optional);

#include "test_productgroup_data_analysis_links.c"


productgroup_data_analysis_t* instantiate_productgroup_data_analysis(int include_optional) {
  productgroup_data_analysis_t* productgroup_data_analysis = NULL;
  if (include_optional) {
    productgroup_data_analysis = productgroup_data_analysis_create(
       // false, not to have infinite recursion
      instantiate_productgroup_data_analysis_links(0)
    );
  } else {
    productgroup_data_analysis = productgroup_data_analysis_create(
      NULL
    );
  }

  return productgroup_data_analysis;
}


#ifdef productgroup_data_analysis_MAIN

void test_productgroup_data_analysis(int include_optional) {
    productgroup_data_analysis_t* productgroup_data_analysis_1 = instantiate_productgroup_data_analysis(include_optional);

	cJSON* jsonproductgroup_data_analysis_1 = productgroup_data_analysis_convertToJSON(productgroup_data_analysis_1);
	printf("productgroup_data_analysis :\n%s\n", cJSON_Print(jsonproductgroup_data_analysis_1));
	productgroup_data_analysis_t* productgroup_data_analysis_2 = productgroup_data_analysis_parseFromJSON(jsonproductgroup_data_analysis_1);
	cJSON* jsonproductgroup_data_analysis_2 = productgroup_data_analysis_convertToJSON(productgroup_data_analysis_2);
	printf("repeating productgroup_data_analysis:\n%s\n", cJSON_Print(jsonproductgroup_data_analysis_2));
}

int main() {
  test_productgroup_data_analysis(1);
  test_productgroup_data_analysis(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_data_analysis_MAIN
#endif // productgroup_data_analysis_TEST
