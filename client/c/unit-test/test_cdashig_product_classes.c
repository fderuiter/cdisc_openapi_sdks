#ifndef cdashig_product_classes_TEST
#define cdashig_product_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_product_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_product_classes.h"
cdashig_product_classes_t* instantiate_cdashig_product_classes(int include_optional);

#include "test_cdashig_product_classes_links.c"


cdashig_product_classes_t* instantiate_cdashig_product_classes(int include_optional) {
  cdashig_product_classes_t* cdashig_product_classes = NULL;
  if (include_optional) {
    cdashig_product_classes = cdashig_product_classes_create(
      "CDASHIG v2.1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "2.1",
       // false, not to have infinite recursion
      instantiate_cdashig_product_classes_links(0)
    );
  } else {
    cdashig_product_classes = cdashig_product_classes_create(
      "CDASHIG v2.1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "2.1",
      NULL
    );
  }

  return cdashig_product_classes;
}


#ifdef cdashig_product_classes_MAIN

void test_cdashig_product_classes(int include_optional) {
    cdashig_product_classes_t* cdashig_product_classes_1 = instantiate_cdashig_product_classes(include_optional);

	cJSON* jsoncdashig_product_classes_1 = cdashig_product_classes_convertToJSON(cdashig_product_classes_1);
	printf("cdashig_product_classes :\n%s\n", cJSON_Print(jsoncdashig_product_classes_1));
	cdashig_product_classes_t* cdashig_product_classes_2 = cdashig_product_classes_parseFromJSON(jsoncdashig_product_classes_1);
	cJSON* jsoncdashig_product_classes_2 = cdashig_product_classes_convertToJSON(cdashig_product_classes_2);
	printf("repeating cdashig_product_classes:\n%s\n", cJSON_Print(jsoncdashig_product_classes_2));
}

int main() {
  test_cdashig_product_classes(1);
  test_cdashig_product_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_product_classes_MAIN
#endif // cdashig_product_classes_TEST
