#ifndef sdtmig_product_ref_element_TEST
#define sdtmig_product_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_product_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_product_ref_element.h"
sdtmig_product_ref_element_t* instantiate_sdtmig_product_ref_element(int include_optional);



sdtmig_product_ref_element_t* instantiate_sdtmig_product_ref_element(int include_optional) {
  sdtmig_product_ref_element_t* sdtmig_product_ref_element = NULL;
  if (include_optional) {
    sdtmig_product_ref_element = sdtmig_product_ref_element_create(
      "/mdr/sdtmig/3-3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "Implementation Guide"
    );
  } else {
    sdtmig_product_ref_element = sdtmig_product_ref_element_create(
      "/mdr/sdtmig/3-3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "Implementation Guide"
    );
  }

  return sdtmig_product_ref_element;
}


#ifdef sdtmig_product_ref_element_MAIN

void test_sdtmig_product_ref_element(int include_optional) {
    sdtmig_product_ref_element_t* sdtmig_product_ref_element_1 = instantiate_sdtmig_product_ref_element(include_optional);

	cJSON* jsonsdtmig_product_ref_element_1 = sdtmig_product_ref_element_convertToJSON(sdtmig_product_ref_element_1);
	printf("sdtmig_product_ref_element :\n%s\n", cJSON_Print(jsonsdtmig_product_ref_element_1));
	sdtmig_product_ref_element_t* sdtmig_product_ref_element_2 = sdtmig_product_ref_element_parseFromJSON(jsonsdtmig_product_ref_element_1);
	cJSON* jsonsdtmig_product_ref_element_2 = sdtmig_product_ref_element_convertToJSON(sdtmig_product_ref_element_2);
	printf("repeating sdtmig_product_ref_element:\n%s\n", cJSON_Print(jsonsdtmig_product_ref_element_2));
}

int main() {
  test_sdtmig_product_ref_element(1);
  test_sdtmig_product_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_product_ref_element_MAIN
#endif // sdtmig_product_ref_element_TEST
