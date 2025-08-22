#ifndef sdtmig_dataset_TEST
#define sdtmig_dataset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset.h"
sdtmig_dataset_t* instantiate_sdtmig_dataset(int include_optional);

#include "test_sdtmig_dataset_links.c"


sdtmig_dataset_t* instantiate_sdtmig_dataset(int include_optional) {
  sdtmig_dataset_t* sdtmig_dataset = NULL;
  if (include_optional) {
    sdtmig_dataset = sdtmig_dataset_create(
      "24",
      "LB",
      "Laboratory Test Results",
      "A findings domain that contains laboratory test data such as hematology, clinical chemistry and urinalysis. This domain does not include microbiology or pharmacokinetic data, which are stored in separate domains. (Source: CDISC Controlled Terminology, DOMAIN, C49592, 2018-06-29)",
      "One record per lab test per time point per visit per subject",
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_links(0),
      list_createList()
    );
  } else {
    sdtmig_dataset = sdtmig_dataset_create(
      "24",
      "LB",
      "Laboratory Test Results",
      "A findings domain that contains laboratory test data such as hematology, clinical chemistry and urinalysis. This domain does not include microbiology or pharmacokinetic data, which are stored in separate domains. (Source: CDISC Controlled Terminology, DOMAIN, C49592, 2018-06-29)",
      "One record per lab test per time point per visit per subject",
      NULL,
      list_createList()
    );
  }

  return sdtmig_dataset;
}


#ifdef sdtmig_dataset_MAIN

void test_sdtmig_dataset(int include_optional) {
    sdtmig_dataset_t* sdtmig_dataset_1 = instantiate_sdtmig_dataset(include_optional);

	cJSON* jsonsdtmig_dataset_1 = sdtmig_dataset_convertToJSON(sdtmig_dataset_1);
	printf("sdtmig_dataset :\n%s\n", cJSON_Print(jsonsdtmig_dataset_1));
	sdtmig_dataset_t* sdtmig_dataset_2 = sdtmig_dataset_parseFromJSON(jsonsdtmig_dataset_1);
	cJSON* jsonsdtmig_dataset_2 = sdtmig_dataset_convertToJSON(sdtmig_dataset_2);
	printf("repeating sdtmig_dataset:\n%s\n", cJSON_Print(jsonsdtmig_dataset_2));
}

int main() {
  test_sdtmig_dataset(1);
  test_sdtmig_dataset(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_MAIN
#endif // sdtmig_dataset_TEST
