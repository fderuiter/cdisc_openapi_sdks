#ifndef sdtm_dataset_TEST
#define sdtm_dataset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset.h"
sdtm_dataset_t* instantiate_sdtm_dataset(int include_optional);

#include "test_sdtm_dataset_links.c"


sdtm_dataset_t* instantiate_sdtm_dataset(int include_optional) {
  sdtm_dataset_t* sdtm_dataset = NULL;
  if (include_optional) {
    sdtm_dataset = sdtm_dataset_create(
      "1",
      "DM",
      "Demographics",
      "A special-purpose domain that includes a set of essential standard variables that describe each subject in a clinical study. It is the parent domain for all other observations for human clinical subjects. (Source: CDISC Controlled Terminology, DOMAIN, C49572, 2018-06-29)",
      "One record per subject",
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_links(0),
      list_createList()
    );
  } else {
    sdtm_dataset = sdtm_dataset_create(
      "1",
      "DM",
      "Demographics",
      "A special-purpose domain that includes a set of essential standard variables that describe each subject in a clinical study. It is the parent domain for all other observations for human clinical subjects. (Source: CDISC Controlled Terminology, DOMAIN, C49572, 2018-06-29)",
      "One record per subject",
      NULL,
      list_createList()
    );
  }

  return sdtm_dataset;
}


#ifdef sdtm_dataset_MAIN

void test_sdtm_dataset(int include_optional) {
    sdtm_dataset_t* sdtm_dataset_1 = instantiate_sdtm_dataset(include_optional);

	cJSON* jsonsdtm_dataset_1 = sdtm_dataset_convertToJSON(sdtm_dataset_1);
	printf("sdtm_dataset :\n%s\n", cJSON_Print(jsonsdtm_dataset_1));
	sdtm_dataset_t* sdtm_dataset_2 = sdtm_dataset_parseFromJSON(jsonsdtm_dataset_1);
	cJSON* jsonsdtm_dataset_2 = sdtm_dataset_convertToJSON(sdtm_dataset_2);
	printf("repeating sdtm_dataset:\n%s\n", cJSON_Print(jsonsdtm_dataset_2));
}

int main() {
  test_sdtm_dataset(1);
  test_sdtm_dataset(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_MAIN
#endif // sdtm_dataset_TEST
