#ifndef sdtm_class_variables_TEST
#define sdtm_class_variables_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_variables_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_variables.h"
sdtm_class_variables_t* instantiate_sdtm_class_variables(int include_optional);

#include "test_sdtm_class_variables_links.c"


sdtm_class_variables_t* instantiate_sdtm_class_variables(int include_optional) {
  sdtm_class_variables_t* sdtm_class_variables = NULL;
  if (include_optional) {
    sdtm_class_variables = sdtm_class_variables_create(
      "1",
      "General Observations",
      "General Observation Class",
      "The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2)",
       // false, not to have infinite recursion
      instantiate_sdtm_class_variables_links(0)
    );
  } else {
    sdtm_class_variables = sdtm_class_variables_create(
      "1",
      "General Observations",
      "General Observation Class",
      "The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2)",
      NULL
    );
  }

  return sdtm_class_variables;
}


#ifdef sdtm_class_variables_MAIN

void test_sdtm_class_variables(int include_optional) {
    sdtm_class_variables_t* sdtm_class_variables_1 = instantiate_sdtm_class_variables(include_optional);

	cJSON* jsonsdtm_class_variables_1 = sdtm_class_variables_convertToJSON(sdtm_class_variables_1);
	printf("sdtm_class_variables :\n%s\n", cJSON_Print(jsonsdtm_class_variables_1));
	sdtm_class_variables_t* sdtm_class_variables_2 = sdtm_class_variables_parseFromJSON(jsonsdtm_class_variables_1);
	cJSON* jsonsdtm_class_variables_2 = sdtm_class_variables_convertToJSON(sdtm_class_variables_2);
	printf("repeating sdtm_class_variables:\n%s\n", cJSON_Print(jsonsdtm_class_variables_2));
}

int main() {
  test_sdtm_class_variables(1);
  test_sdtm_class_variables(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_variables_MAIN
#endif // sdtm_class_variables_TEST
