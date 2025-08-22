#ifndef sdtm_product_ref_element_TEST
#define sdtm_product_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_product_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_product_ref_element.h"
sdtm_product_ref_element_t* instantiate_sdtm_product_ref_element(int include_optional);



sdtm_product_ref_element_t* instantiate_sdtm_product_ref_element(int include_optional) {
  sdtm_product_ref_element_t* sdtm_product_ref_element = NULL;
  if (include_optional) {
    sdtm_product_ref_element = sdtm_product_ref_element_create(
      "/mdr/sdtm/1-8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "Foundational Model"
    );
  } else {
    sdtm_product_ref_element = sdtm_product_ref_element_create(
      "/mdr/sdtm/1-8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "Foundational Model"
    );
  }

  return sdtm_product_ref_element;
}


#ifdef sdtm_product_ref_element_MAIN

void test_sdtm_product_ref_element(int include_optional) {
    sdtm_product_ref_element_t* sdtm_product_ref_element_1 = instantiate_sdtm_product_ref_element(include_optional);

	cJSON* jsonsdtm_product_ref_element_1 = sdtm_product_ref_element_convertToJSON(sdtm_product_ref_element_1);
	printf("sdtm_product_ref_element :\n%s\n", cJSON_Print(jsonsdtm_product_ref_element_1));
	sdtm_product_ref_element_t* sdtm_product_ref_element_2 = sdtm_product_ref_element_parseFromJSON(jsonsdtm_product_ref_element_1);
	cJSON* jsonsdtm_product_ref_element_2 = sdtm_product_ref_element_convertToJSON(sdtm_product_ref_element_2);
	printf("repeating sdtm_product_ref_element:\n%s\n", cJSON_Print(jsonsdtm_product_ref_element_2));
}

int main() {
  test_sdtm_product_ref_element(1);
  test_sdtm_product_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_product_ref_element_MAIN
#endif // sdtm_product_ref_element_TEST
