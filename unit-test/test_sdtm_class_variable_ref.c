#ifndef sdtm_class_variable_ref_TEST
#define sdtm_class_variable_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_variable_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_variable_ref.h"
sdtm_class_variable_ref_t* instantiate_sdtm_class_variable_ref(int include_optional);



sdtm_class_variable_ref_t* instantiate_sdtm_class_variable_ref(int include_optional) {
  sdtm_class_variable_ref_t* sdtm_class_variable_ref = NULL;
  if (include_optional) {
    sdtm_class_variable_ref = sdtm_class_variable_ref_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations/variables/--DTC",
      "Date/Time of Collection",
      "Class Variable"
    );
  } else {
    sdtm_class_variable_ref = sdtm_class_variable_ref_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations/variables/--DTC",
      "Date/Time of Collection",
      "Class Variable"
    );
  }

  return sdtm_class_variable_ref;
}


#ifdef sdtm_class_variable_ref_MAIN

void test_sdtm_class_variable_ref(int include_optional) {
    sdtm_class_variable_ref_t* sdtm_class_variable_ref_1 = instantiate_sdtm_class_variable_ref(include_optional);

	cJSON* jsonsdtm_class_variable_ref_1 = sdtm_class_variable_ref_convertToJSON(sdtm_class_variable_ref_1);
	printf("sdtm_class_variable_ref :\n%s\n", cJSON_Print(jsonsdtm_class_variable_ref_1));
	sdtm_class_variable_ref_t* sdtm_class_variable_ref_2 = sdtm_class_variable_ref_parseFromJSON(jsonsdtm_class_variable_ref_1);
	cJSON* jsonsdtm_class_variable_ref_2 = sdtm_class_variable_ref_convertToJSON(sdtm_class_variable_ref_2);
	printf("repeating sdtm_class_variable_ref:\n%s\n", cJSON_Print(jsonsdtm_class_variable_ref_2));
}

int main() {
  test_sdtm_class_variable_ref(1);
  test_sdtm_class_variable_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_variable_ref_MAIN
#endif // sdtm_class_variable_ref_TEST
