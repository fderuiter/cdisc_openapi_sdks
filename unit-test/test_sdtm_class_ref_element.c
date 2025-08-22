#ifndef sdtm_class_ref_element_TEST
#define sdtm_class_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_ref_element.h"
sdtm_class_ref_element_t* instantiate_sdtm_class_ref_element(int include_optional);



sdtm_class_ref_element_t* instantiate_sdtm_class_ref_element(int include_optional) {
  sdtm_class_ref_element_t* sdtm_class_ref_element = NULL;
  if (include_optional) {
    sdtm_class_ref_element = sdtm_class_ref_element_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations",
      "General Observation Class",
      "Class"
    );
  } else {
    sdtm_class_ref_element = sdtm_class_ref_element_create(
      "/mdr/sdtm/1-8/classes/GeneralObservations",
      "General Observation Class",
      "Class"
    );
  }

  return sdtm_class_ref_element;
}


#ifdef sdtm_class_ref_element_MAIN

void test_sdtm_class_ref_element(int include_optional) {
    sdtm_class_ref_element_t* sdtm_class_ref_element_1 = instantiate_sdtm_class_ref_element(include_optional);

	cJSON* jsonsdtm_class_ref_element_1 = sdtm_class_ref_element_convertToJSON(sdtm_class_ref_element_1);
	printf("sdtm_class_ref_element :\n%s\n", cJSON_Print(jsonsdtm_class_ref_element_1));
	sdtm_class_ref_element_t* sdtm_class_ref_element_2 = sdtm_class_ref_element_parseFromJSON(jsonsdtm_class_ref_element_1);
	cJSON* jsonsdtm_class_ref_element_2 = sdtm_class_ref_element_convertToJSON(sdtm_class_ref_element_2);
	printf("repeating sdtm_class_ref_element:\n%s\n", cJSON_Print(jsonsdtm_class_ref_element_2));
}

int main() {
  test_sdtm_class_ref_element(1);
  test_sdtm_class_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_ref_element_MAIN
#endif // sdtm_class_ref_element_TEST
