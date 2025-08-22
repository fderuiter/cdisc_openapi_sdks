#ifndef sdtm_product_ref_TEST
#define sdtm_product_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_product_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_product_ref.h"
sdtm_product_ref_t* instantiate_sdtm_product_ref(int include_optional);



sdtm_product_ref_t* instantiate_sdtm_product_ref(int include_optional) {
  sdtm_product_ref_t* sdtm_product_ref = NULL;
  if (include_optional) {
    sdtm_product_ref = sdtm_product_ref_create(
      "/mdr/sdtm/1-8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "Foundational Model"
    );
  } else {
    sdtm_product_ref = sdtm_product_ref_create(
      "/mdr/sdtm/1-8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "Foundational Model"
    );
  }

  return sdtm_product_ref;
}


#ifdef sdtm_product_ref_MAIN

void test_sdtm_product_ref(int include_optional) {
    sdtm_product_ref_t* sdtm_product_ref_1 = instantiate_sdtm_product_ref(include_optional);

	cJSON* jsonsdtm_product_ref_1 = sdtm_product_ref_convertToJSON(sdtm_product_ref_1);
	printf("sdtm_product_ref :\n%s\n", cJSON_Print(jsonsdtm_product_ref_1));
	sdtm_product_ref_t* sdtm_product_ref_2 = sdtm_product_ref_parseFromJSON(jsonsdtm_product_ref_1);
	cJSON* jsonsdtm_product_ref_2 = sdtm_product_ref_convertToJSON(sdtm_product_ref_2);
	printf("repeating sdtm_product_ref:\n%s\n", cJSON_Print(jsonsdtm_product_ref_2));
}

int main() {
  test_sdtm_product_ref(1);
  test_sdtm_product_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_product_ref_MAIN
#endif // sdtm_product_ref_TEST
