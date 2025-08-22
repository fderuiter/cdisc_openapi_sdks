#ifndef sdtm_dataset_variables_TEST
#define sdtm_dataset_variables_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_variables_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset_variables.h"
sdtm_dataset_variables_t* instantiate_sdtm_dataset_variables(int include_optional);

#include "test_sdtm_dataset_variables_links.c"


sdtm_dataset_variables_t* instantiate_sdtm_dataset_variables(int include_optional) {
  sdtm_dataset_variables_t* sdtm_dataset_variables = NULL;
  if (include_optional) {
    sdtm_dataset_variables = sdtm_dataset_variables_create(
      "1",
      "DM",
      "Demographics",
      "A special-purpose domain that includes a set of essential standard variables that describe each subject in a clinical study. It is the parent domain for all other observations for human clinical subjects. (Source: CDISC Controlled Terminology, DOMAIN, C49572, 2018-06-29)",
      "One record per subject",
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variables_links(0)
    );
  } else {
    sdtm_dataset_variables = sdtm_dataset_variables_create(
      "1",
      "DM",
      "Demographics",
      "A special-purpose domain that includes a set of essential standard variables that describe each subject in a clinical study. It is the parent domain for all other observations for human clinical subjects. (Source: CDISC Controlled Terminology, DOMAIN, C49572, 2018-06-29)",
      "One record per subject",
      NULL
    );
  }

  return sdtm_dataset_variables;
}


#ifdef sdtm_dataset_variables_MAIN

void test_sdtm_dataset_variables(int include_optional) {
    sdtm_dataset_variables_t* sdtm_dataset_variables_1 = instantiate_sdtm_dataset_variables(include_optional);

	cJSON* jsonsdtm_dataset_variables_1 = sdtm_dataset_variables_convertToJSON(sdtm_dataset_variables_1);
	printf("sdtm_dataset_variables :\n%s\n", cJSON_Print(jsonsdtm_dataset_variables_1));
	sdtm_dataset_variables_t* sdtm_dataset_variables_2 = sdtm_dataset_variables_parseFromJSON(jsonsdtm_dataset_variables_1);
	cJSON* jsonsdtm_dataset_variables_2 = sdtm_dataset_variables_convertToJSON(sdtm_dataset_variables_2);
	printf("repeating sdtm_dataset_variables:\n%s\n", cJSON_Print(jsonsdtm_dataset_variables_2));
}

int main() {
  test_sdtm_dataset_variables(1);
  test_sdtm_dataset_variables(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_variables_MAIN
#endif // sdtm_dataset_variables_TEST
