#ifndef sdtm_class_TEST
#define sdtm_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class.h"
sdtm_class_t* instantiate_sdtm_class(int include_optional);

#include "test_sdtm_class_links.c"


sdtm_class_t* instantiate_sdtm_class(int include_optional) {
  sdtm_class_t* sdtm_class = NULL;
  if (include_optional) {
    sdtm_class = sdtm_class_create(
      "1",
      "General Observations",
      "General Observation Class",
      "The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2)",
       // false, not to have infinite recursion
      instantiate_sdtm_class_links(0),
      list_createList(),
      list_createList()
    );
  } else {
    sdtm_class = sdtm_class_create(
      "1",
      "General Observations",
      "General Observation Class",
      "The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2)",
      NULL,
      list_createList(),
      list_createList()
    );
  }

  return sdtm_class;
}


#ifdef sdtm_class_MAIN

void test_sdtm_class(int include_optional) {
    sdtm_class_t* sdtm_class_1 = instantiate_sdtm_class(include_optional);

	cJSON* jsonsdtm_class_1 = sdtm_class_convertToJSON(sdtm_class_1);
	printf("sdtm_class :\n%s\n", cJSON_Print(jsonsdtm_class_1));
	sdtm_class_t* sdtm_class_2 = sdtm_class_parseFromJSON(jsonsdtm_class_1);
	cJSON* jsonsdtm_class_2 = sdtm_class_convertToJSON(sdtm_class_2);
	printf("repeating sdtm_class:\n%s\n", cJSON_Print(jsonsdtm_class_2));
}

int main() {
  test_sdtm_class(1);
  test_sdtm_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_MAIN
#endif // sdtm_class_TEST
