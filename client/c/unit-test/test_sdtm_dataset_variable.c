#ifndef sdtm_dataset_variable_TEST
#define sdtm_dataset_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset_variable.h"
sdtm_dataset_variable_t* instantiate_sdtm_dataset_variable(int include_optional);

#include "test_sdtm_dataset_variable_links.c"


sdtm_dataset_variable_t* instantiate_sdtm_dataset_variable(int include_optional) {
  sdtm_dataset_variable_t* sdtm_dataset_variable = NULL;
  if (include_optional) {
    sdtm_dataset_variable = sdtm_dataset_variable_create(
      "4",
      "SUBJID",
      "Subject Identifier for the Study",
      "Subject identifier, which must be unique within the study. Often the ID of the subject as recorded on a CRF.",
      "Topic",
      "Topic",
      "Char",
      "Sponsor-Defined",
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variable_links(0)
    );
  } else {
    sdtm_dataset_variable = sdtm_dataset_variable_create(
      "4",
      "SUBJID",
      "Subject Identifier for the Study",
      "Subject identifier, which must be unique within the study. Often the ID of the subject as recorded on a CRF.",
      "Topic",
      "Topic",
      "Char",
      "Sponsor-Defined",
      NULL
    );
  }

  return sdtm_dataset_variable;
}


#ifdef sdtm_dataset_variable_MAIN

void test_sdtm_dataset_variable(int include_optional) {
    sdtm_dataset_variable_t* sdtm_dataset_variable_1 = instantiate_sdtm_dataset_variable(include_optional);

	cJSON* jsonsdtm_dataset_variable_1 = sdtm_dataset_variable_convertToJSON(sdtm_dataset_variable_1);
	printf("sdtm_dataset_variable :\n%s\n", cJSON_Print(jsonsdtm_dataset_variable_1));
	sdtm_dataset_variable_t* sdtm_dataset_variable_2 = sdtm_dataset_variable_parseFromJSON(jsonsdtm_dataset_variable_1);
	cJSON* jsonsdtm_dataset_variable_2 = sdtm_dataset_variable_convertToJSON(sdtm_dataset_variable_2);
	printf("repeating sdtm_dataset_variable:\n%s\n", cJSON_Print(jsonsdtm_dataset_variable_2));
}

int main() {
  test_sdtm_dataset_variable(1);
  test_sdtm_dataset_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_variable_MAIN
#endif // sdtm_dataset_variable_TEST
