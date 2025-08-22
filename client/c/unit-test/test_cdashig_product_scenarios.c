#ifndef cdashig_product_scenarios_TEST
#define cdashig_product_scenarios_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_product_scenarios_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_product_scenarios.h"
cdashig_product_scenarios_t* instantiate_cdashig_product_scenarios(int include_optional);

#include "test_cdashig_product_scenarios_links.c"


cdashig_product_scenarios_t* instantiate_cdashig_product_scenarios(int include_optional) {
  cdashig_product_scenarios_t* cdashig_product_scenarios = NULL;
  if (include_optional) {
    cdashig_product_scenarios = cdashig_product_scenarios_create(
      "CDASHIG v2.1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "2.1",
       // false, not to have infinite recursion
      instantiate_cdashig_product_scenarios_links(0)
    );
  } else {
    cdashig_product_scenarios = cdashig_product_scenarios_create(
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

  return cdashig_product_scenarios;
}


#ifdef cdashig_product_scenarios_MAIN

void test_cdashig_product_scenarios(int include_optional) {
    cdashig_product_scenarios_t* cdashig_product_scenarios_1 = instantiate_cdashig_product_scenarios(include_optional);

	cJSON* jsoncdashig_product_scenarios_1 = cdashig_product_scenarios_convertToJSON(cdashig_product_scenarios_1);
	printf("cdashig_product_scenarios :\n%s\n", cJSON_Print(jsoncdashig_product_scenarios_1));
	cdashig_product_scenarios_t* cdashig_product_scenarios_2 = cdashig_product_scenarios_parseFromJSON(jsoncdashig_product_scenarios_1);
	cJSON* jsoncdashig_product_scenarios_2 = cdashig_product_scenarios_convertToJSON(cdashig_product_scenarios_2);
	printf("repeating cdashig_product_scenarios:\n%s\n", cJSON_Print(jsoncdashig_product_scenarios_2));
}

int main() {
  test_cdashig_product_scenarios(1);
  test_cdashig_product_scenarios(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_product_scenarios_MAIN
#endif // cdashig_product_scenarios_TEST
