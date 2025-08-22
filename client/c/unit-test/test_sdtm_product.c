#ifndef sdtm_product_TEST
#define sdtm_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_product.h"
sdtm_product_t* instantiate_sdtm_product(int include_optional);

#include "test_sdtm_product_links.c"


sdtm_product_t* instantiate_sdtm_product(int include_optional) {
  sdtm_product_t* sdtm_product = NULL;
  if (include_optional) {
    sdtm_product = sdtm_product_create(
      "SDTM v1.8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.",
      "CDISC Submission Data Standards Team and CDISC SDTM Governance Committee",
      "2019-09-17",
      "Final",
      "1.8",
       // false, not to have infinite recursion
      instantiate_sdtm_product_links(0),
      list_createList(),
      list_createList()
    );
  } else {
    sdtm_product = sdtm_product_create(
      "SDTM v1.8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.",
      "CDISC Submission Data Standards Team and CDISC SDTM Governance Committee",
      "2019-09-17",
      "Final",
      "1.8",
      NULL,
      list_createList(),
      list_createList()
    );
  }

  return sdtm_product;
}


#ifdef sdtm_product_MAIN

void test_sdtm_product(int include_optional) {
    sdtm_product_t* sdtm_product_1 = instantiate_sdtm_product(include_optional);

	cJSON* jsonsdtm_product_1 = sdtm_product_convertToJSON(sdtm_product_1);
	printf("sdtm_product :\n%s\n", cJSON_Print(jsonsdtm_product_1));
	sdtm_product_t* sdtm_product_2 = sdtm_product_parseFromJSON(jsonsdtm_product_1);
	cJSON* jsonsdtm_product_2 = sdtm_product_convertToJSON(sdtm_product_2);
	printf("repeating sdtm_product:\n%s\n", cJSON_Print(jsonsdtm_product_2));
}

int main() {
  test_sdtm_product(1);
  test_sdtm_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_product_MAIN
#endif // sdtm_product_TEST
