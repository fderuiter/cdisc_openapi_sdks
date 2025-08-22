#ifndef cdashig_product_TEST
#define cdashig_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_product.h"
cdashig_product_t* instantiate_cdashig_product(int include_optional);

#include "test_cdashig_product_links.c"


cdashig_product_t* instantiate_cdashig_product(int include_optional) {
  cdashig_product_t* cdashig_product = NULL;
  if (include_optional) {
    cdashig_product = cdashig_product_create(
      "CDASHIG v2.1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "2.1",
       // false, not to have infinite recursion
      instantiate_cdashig_product_links(0),
      list_createList()
    );
  } else {
    cdashig_product = cdashig_product_create(
      "CDASHIG v2.1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "2.1",
      NULL,
      list_createList()
    );
  }

  return cdashig_product;
}


#ifdef cdashig_product_MAIN

void test_cdashig_product(int include_optional) {
    cdashig_product_t* cdashig_product_1 = instantiate_cdashig_product(include_optional);

	cJSON* jsoncdashig_product_1 = cdashig_product_convertToJSON(cdashig_product_1);
	printf("cdashig_product :\n%s\n", cJSON_Print(jsoncdashig_product_1));
	cdashig_product_t* cdashig_product_2 = cdashig_product_parseFromJSON(jsoncdashig_product_1);
	cJSON* jsoncdashig_product_2 = cdashig_product_convertToJSON(cdashig_product_2);
	printf("repeating cdashig_product:\n%s\n", cJSON_Print(jsoncdashig_product_2));
}

int main() {
  test_cdashig_product(1);
  test_cdashig_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_product_MAIN
#endif // cdashig_product_TEST
