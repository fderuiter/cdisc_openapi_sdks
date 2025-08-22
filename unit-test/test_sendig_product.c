#ifndef sendig_product_TEST
#define sendig_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_product.h"
sendig_product_t* instantiate_sendig_product(int include_optional);

#include "test_sendig_product_links.c"


sendig_product_t* instantiate_sendig_product(int include_optional) {
  sendig_product_t* sendig_product = NULL;
  if (include_optional) {
    sendig_product = sendig_product_create(
      "SENDIG v3.1",
      "Standard for Exchange ofâ€¦ies Version 3.1 (Final)",
      "The SENDIG is intended to guide the organization, structure, and format of standard nonclinical tabulation datasets for interchange between organizations such as sponsors and CROs, and for submission to regulatory authorities such as the U.S. Food and Drug Administration (FDA).",
      "Prepared by the CDISC Stâ€¦f Nonclinical Data Team",
      "2016-06-27",
      "Final",
      "3.1",
       // false, not to have infinite recursion
      instantiate_sendig_product_links(0),
      list_createList()
    );
  } else {
    sendig_product = sendig_product_create(
      "SENDIG v3.1",
      "Standard for Exchange ofâ€¦ies Version 3.1 (Final)",
      "The SENDIG is intended to guide the organization, structure, and format of standard nonclinical tabulation datasets for interchange between organizations such as sponsors and CROs, and for submission to regulatory authorities such as the U.S. Food and Drug Administration (FDA).",
      "Prepared by the CDISC Stâ€¦f Nonclinical Data Team",
      "2016-06-27",
      "Final",
      "3.1",
      NULL,
      list_createList()
    );
  }

  return sendig_product;
}


#ifdef sendig_product_MAIN

void test_sendig_product(int include_optional) {
    sendig_product_t* sendig_product_1 = instantiate_sendig_product(include_optional);

	cJSON* jsonsendig_product_1 = sendig_product_convertToJSON(sendig_product_1);
	printf("sendig_product :\n%s\n", cJSON_Print(jsonsendig_product_1));
	sendig_product_t* sendig_product_2 = sendig_product_parseFromJSON(jsonsendig_product_1);
	cJSON* jsonsendig_product_2 = sendig_product_convertToJSON(sendig_product_2);
	printf("repeating sendig_product:\n%s\n", cJSON_Print(jsonsendig_product_2));
}

int main() {
  test_sendig_product(1);
  test_sendig_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_product_MAIN
#endif // sendig_product_TEST
