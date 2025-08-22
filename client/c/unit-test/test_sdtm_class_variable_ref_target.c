#ifndef sdtm_class_variable_ref_target_TEST
#define sdtm_class_variable_ref_target_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_variable_ref_target_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_variable_ref_target.h"
sdtm_class_variable_ref_target_t* instantiate_sdtm_class_variable_ref_target(int include_optional);



sdtm_class_variable_ref_target_t* instantiate_sdtm_class_variable_ref_target(int include_optional) {
  sdtm_class_variable_ref_target_t* sdtm_class_variable_ref_target = NULL;
  if (include_optional) {
    sdtm_class_variable_ref_target = sdtm_class_variable_ref_target_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations/variables/--DTC",
      "Date/Time of Collection",
      "Class Variable"
    );
  } else {
    sdtm_class_variable_ref_target = sdtm_class_variable_ref_target_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations/variables/--DTC",
      "Date/Time of Collection",
      "Class Variable"
    );
  }

  return sdtm_class_variable_ref_target;
}


#ifdef sdtm_class_variable_ref_target_MAIN

void test_sdtm_class_variable_ref_target(int include_optional) {
    sdtm_class_variable_ref_target_t* sdtm_class_variable_ref_target_1 = instantiate_sdtm_class_variable_ref_target(include_optional);

	cJSON* jsonsdtm_class_variable_ref_target_1 = sdtm_class_variable_ref_target_convertToJSON(sdtm_class_variable_ref_target_1);
	printf("sdtm_class_variable_ref_target :\n%s\n", cJSON_Print(jsonsdtm_class_variable_ref_target_1));
	sdtm_class_variable_ref_target_t* sdtm_class_variable_ref_target_2 = sdtm_class_variable_ref_target_parseFromJSON(jsonsdtm_class_variable_ref_target_1);
	cJSON* jsonsdtm_class_variable_ref_target_2 = sdtm_class_variable_ref_target_convertToJSON(sdtm_class_variable_ref_target_2);
	printf("repeating sdtm_class_variable_ref_target:\n%s\n", cJSON_Print(jsonsdtm_class_variable_ref_target_2));
}

int main() {
  test_sdtm_class_variable_ref_target(1);
  test_sdtm_class_variable_ref_target(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_variable_ref_target_MAIN
#endif // sdtm_class_variable_ref_target_TEST
