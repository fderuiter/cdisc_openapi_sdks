#ifndef sdtm_class_variable_ref_qualifies_TEST
#define sdtm_class_variable_ref_qualifies_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_variable_ref_qualifies_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_variable_ref_qualifies.h"
sdtm_class_variable_ref_qualifies_t* instantiate_sdtm_class_variable_ref_qualifies(int include_optional);



sdtm_class_variable_ref_qualifies_t* instantiate_sdtm_class_variable_ref_qualifies(int include_optional) {
  sdtm_class_variable_ref_qualifies_t* sdtm_class_variable_ref_qualifies = NULL;
  if (include_optional) {
    sdtm_class_variable_ref_qualifies = sdtm_class_variable_ref_qualifies_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations/variables/--DTC",
      "Date/Time of Collection",
      "Class Variable"
    );
  } else {
    sdtm_class_variable_ref_qualifies = sdtm_class_variable_ref_qualifies_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations/variables/--DTC",
      "Date/Time of Collection",
      "Class Variable"
    );
  }

  return sdtm_class_variable_ref_qualifies;
}


#ifdef sdtm_class_variable_ref_qualifies_MAIN

void test_sdtm_class_variable_ref_qualifies(int include_optional) {
    sdtm_class_variable_ref_qualifies_t* sdtm_class_variable_ref_qualifies_1 = instantiate_sdtm_class_variable_ref_qualifies(include_optional);

	cJSON* jsonsdtm_class_variable_ref_qualifies_1 = sdtm_class_variable_ref_qualifies_convertToJSON(sdtm_class_variable_ref_qualifies_1);
	printf("sdtm_class_variable_ref_qualifies :\n%s\n", cJSON_Print(jsonsdtm_class_variable_ref_qualifies_1));
	sdtm_class_variable_ref_qualifies_t* sdtm_class_variable_ref_qualifies_2 = sdtm_class_variable_ref_qualifies_parseFromJSON(jsonsdtm_class_variable_ref_qualifies_1);
	cJSON* jsonsdtm_class_variable_ref_qualifies_2 = sdtm_class_variable_ref_qualifies_convertToJSON(sdtm_class_variable_ref_qualifies_2);
	printf("repeating sdtm_class_variable_ref_qualifies:\n%s\n", cJSON_Print(jsonsdtm_class_variable_ref_qualifies_2));
}

int main() {
  test_sdtm_class_variable_ref_qualifies(1);
  test_sdtm_class_variable_ref_qualifies(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_variable_ref_qualifies_MAIN
#endif // sdtm_class_variable_ref_qualifies_TEST
