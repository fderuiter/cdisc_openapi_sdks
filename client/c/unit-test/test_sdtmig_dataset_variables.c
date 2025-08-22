#ifndef sdtmig_dataset_variables_TEST
#define sdtmig_dataset_variables_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variables_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variables.h"
sdtmig_dataset_variables_t* instantiate_sdtmig_dataset_variables(int include_optional);

#include "test_sdtmig_dataset_variables_links.c"


sdtmig_dataset_variables_t* instantiate_sdtmig_dataset_variables(int include_optional) {
  sdtmig_dataset_variables_t* sdtmig_dataset_variables = NULL;
  if (include_optional) {
    sdtmig_dataset_variables = sdtmig_dataset_variables_create(
      "24",
      "LB",
      "Laboratory Test Results",
      "A findings domain that contains laboratory test data such as hematology, clinical chemistry and urinalysis. This domain does not include microbiology or pharmacokinetic data, which are stored in separate domains. (Source: CDISC Controlled Terminology, DOMAIN, C49592, 2018-06-29)",
      "One record per lab test per time point per visit per subject",
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_variables_links(0)
    );
  } else {
    sdtmig_dataset_variables = sdtmig_dataset_variables_create(
      "24",
      "LB",
      "Laboratory Test Results",
      "A findings domain that contains laboratory test data such as hematology, clinical chemistry and urinalysis. This domain does not include microbiology or pharmacokinetic data, which are stored in separate domains. (Source: CDISC Controlled Terminology, DOMAIN, C49592, 2018-06-29)",
      "One record per lab test per time point per visit per subject",
      NULL
    );
  }

  return sdtmig_dataset_variables;
}


#ifdef sdtmig_dataset_variables_MAIN

void test_sdtmig_dataset_variables(int include_optional) {
    sdtmig_dataset_variables_t* sdtmig_dataset_variables_1 = instantiate_sdtmig_dataset_variables(include_optional);

	cJSON* jsonsdtmig_dataset_variables_1 = sdtmig_dataset_variables_convertToJSON(sdtmig_dataset_variables_1);
	printf("sdtmig_dataset_variables :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variables_1));
	sdtmig_dataset_variables_t* sdtmig_dataset_variables_2 = sdtmig_dataset_variables_parseFromJSON(jsonsdtmig_dataset_variables_1);
	cJSON* jsonsdtmig_dataset_variables_2 = sdtmig_dataset_variables_convertToJSON(sdtmig_dataset_variables_2);
	printf("repeating sdtmig_dataset_variables:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variables_2));
}

int main() {
  test_sdtmig_dataset_variables(1);
  test_sdtmig_dataset_variables(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variables_MAIN
#endif // sdtmig_dataset_variables_TEST
