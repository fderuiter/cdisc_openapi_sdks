#ifndef sdtmig_product_TEST
#define sdtmig_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_product.h"
sdtmig_product_t* instantiate_sdtmig_product(int include_optional);

#include "test_sdtmig_product_links.c"


sdtmig_product_t* instantiate_sdtmig_product(int include_optional) {
  sdtmig_product_t* sdtmig_product = NULL;
  if (include_optional) {
    sdtmig_product = sdtmig_product_create(
      "SDTMIG v3.3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "Prepared by the CDISC Submission Data Standards Team",
      "2018-11-20",
      "Final",
      "3.3",
       // false, not to have infinite recursion
      instantiate_sdtmig_product_links(0),
      list_createList()
    );
  } else {
    sdtmig_product = sdtmig_product_create(
      "SDTMIG v3.3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "Prepared by the CDISC Submission Data Standards Team",
      "2018-11-20",
      "Final",
      "3.3",
      NULL,
      list_createList()
    );
  }

  return sdtmig_product;
}


#ifdef sdtmig_product_MAIN

void test_sdtmig_product(int include_optional) {
    sdtmig_product_t* sdtmig_product_1 = instantiate_sdtmig_product(include_optional);

	cJSON* jsonsdtmig_product_1 = sdtmig_product_convertToJSON(sdtmig_product_1);
	printf("sdtmig_product :\n%s\n", cJSON_Print(jsonsdtmig_product_1));
	sdtmig_product_t* sdtmig_product_2 = sdtmig_product_parseFromJSON(jsonsdtmig_product_1);
	cJSON* jsonsdtmig_product_2 = sdtmig_product_convertToJSON(sdtmig_product_2);
	printf("repeating sdtmig_product:\n%s\n", cJSON_Print(jsonsdtmig_product_2));
}

int main() {
  test_sdtmig_product(1);
  test_sdtmig_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_product_MAIN
#endif // sdtmig_product_TEST
