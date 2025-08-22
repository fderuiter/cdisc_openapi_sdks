#ifndef cdashig_class_scenarios_TEST
#define cdashig_class_scenarios_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_scenarios_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_scenarios.h"
cdashig_class_scenarios_t* instantiate_cdashig_class_scenarios(int include_optional);

#include "test_cdashig_class_scenarios_links.c"


cdashig_class_scenarios_t* instantiate_cdashig_class_scenarios(int include_optional) {
  cdashig_class_scenarios_t* cdashig_class_scenarios = NULL;
  if (include_optional) {
    cdashig_class_scenarios = cdashig_class_scenarios_create(
      "4",
      "Findings",
      "Findings",
      "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)",
       // false, not to have infinite recursion
      instantiate_cdashig_class_scenarios_links(0)
    );
  } else {
    cdashig_class_scenarios = cdashig_class_scenarios_create(
      "4",
      "Findings",
      "Findings",
      "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)",
      NULL
    );
  }

  return cdashig_class_scenarios;
}


#ifdef cdashig_class_scenarios_MAIN

void test_cdashig_class_scenarios(int include_optional) {
    cdashig_class_scenarios_t* cdashig_class_scenarios_1 = instantiate_cdashig_class_scenarios(include_optional);

	cJSON* jsoncdashig_class_scenarios_1 = cdashig_class_scenarios_convertToJSON(cdashig_class_scenarios_1);
	printf("cdashig_class_scenarios :\n%s\n", cJSON_Print(jsoncdashig_class_scenarios_1));
	cdashig_class_scenarios_t* cdashig_class_scenarios_2 = cdashig_class_scenarios_parseFromJSON(jsoncdashig_class_scenarios_1);
	cJSON* jsoncdashig_class_scenarios_2 = cdashig_class_scenarios_convertToJSON(cdashig_class_scenarios_2);
	printf("repeating cdashig_class_scenarios:\n%s\n", cJSON_Print(jsoncdashig_class_scenarios_2));
}

int main() {
  test_cdashig_class_scenarios(1);
  test_cdashig_class_scenarios(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_scenarios_MAIN
#endif // cdashig_class_scenarios_TEST
