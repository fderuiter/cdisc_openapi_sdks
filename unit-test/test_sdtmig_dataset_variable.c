#ifndef sdtmig_dataset_variable_TEST
#define sdtmig_dataset_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variable.h"
sdtmig_dataset_variable_t* instantiate_sdtmig_dataset_variable(int include_optional);

#include "test_sdtmig_dataset_variable_links.c"


sdtmig_dataset_variable_t* instantiate_sdtmig_dataset_variable(int include_optional) {
  sdtmig_dataset_variable_t* sdtmig_dataset_variable = NULL;
  if (include_optional) {
    sdtmig_dataset_variable = sdtmig_dataset_variable_create(
      "42",
      "LBDTC",
      "Date/Time of Specimen Collection",
      "Date/time of specimen collection represented in ISO 8601 character format.",
      "Timing",
      "Char",
      "Exp",
      "ISO 8601",
      TODO,
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_variable_links(0)
    );
  } else {
    sdtmig_dataset_variable = sdtmig_dataset_variable_create(
      "42",
      "LBDTC",
      "Date/Time of Specimen Collection",
      "Date/time of specimen collection represented in ISO 8601 character format.",
      "Timing",
      "Char",
      "Exp",
      "ISO 8601",
      TODO,
      NULL
    );
  }

  return sdtmig_dataset_variable;
}


#ifdef sdtmig_dataset_variable_MAIN

void test_sdtmig_dataset_variable(int include_optional) {
    sdtmig_dataset_variable_t* sdtmig_dataset_variable_1 = instantiate_sdtmig_dataset_variable(include_optional);

	cJSON* jsonsdtmig_dataset_variable_1 = sdtmig_dataset_variable_convertToJSON(sdtmig_dataset_variable_1);
	printf("sdtmig_dataset_variable :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_1));
	sdtmig_dataset_variable_t* sdtmig_dataset_variable_2 = sdtmig_dataset_variable_parseFromJSON(jsonsdtmig_dataset_variable_1);
	cJSON* jsonsdtmig_dataset_variable_2 = sdtmig_dataset_variable_convertToJSON(sdtmig_dataset_variable_2);
	printf("repeating sdtmig_dataset_variable:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_2));
}

int main() {
  test_sdtmig_dataset_variable(1);
  test_sdtmig_dataset_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variable_MAIN
#endif // sdtmig_dataset_variable_TEST
