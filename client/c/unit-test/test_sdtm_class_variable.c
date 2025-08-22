#ifndef sdtm_class_variable_TEST
#define sdtm_class_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_variable.h"
sdtm_class_variable_t* instantiate_sdtm_class_variable(int include_optional);

#include "test_sdtm_class_variable_links.c"


sdtm_class_variable_t* instantiate_sdtm_class_variable(int include_optional) {
  sdtm_class_variable_t* sdtm_class_variable = NULL;
  if (include_optional) {
    sdtm_class_variable = sdtm_class_variable_create(
      "26",
      "--DTC",
      "Date/Time of Collection",
      "Collection date and time of an observation.",
      "Timing",
      "Timing",
      "Char",
      "ISO 8601",
       // false, not to have infinite recursion
      instantiate_sdtm_class_variable_links(0)
    );
  } else {
    sdtm_class_variable = sdtm_class_variable_create(
      "26",
      "--DTC",
      "Date/Time of Collection",
      "Collection date and time of an observation.",
      "Timing",
      "Timing",
      "Char",
      "ISO 8601",
      NULL
    );
  }

  return sdtm_class_variable;
}


#ifdef sdtm_class_variable_MAIN

void test_sdtm_class_variable(int include_optional) {
    sdtm_class_variable_t* sdtm_class_variable_1 = instantiate_sdtm_class_variable(include_optional);

	cJSON* jsonsdtm_class_variable_1 = sdtm_class_variable_convertToJSON(sdtm_class_variable_1);
	printf("sdtm_class_variable :\n%s\n", cJSON_Print(jsonsdtm_class_variable_1));
	sdtm_class_variable_t* sdtm_class_variable_2 = sdtm_class_variable_parseFromJSON(jsonsdtm_class_variable_1);
	cJSON* jsonsdtm_class_variable_2 = sdtm_class_variable_convertToJSON(sdtm_class_variable_2);
	printf("repeating sdtm_class_variable:\n%s\n", cJSON_Print(jsonsdtm_class_variable_2));
}

int main() {
  test_sdtm_class_variable(1);
  test_sdtm_class_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_variable_MAIN
#endif // sdtm_class_variable_TEST
