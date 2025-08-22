#ifndef sdtmig_class_ref_element_TEST
#define sdtmig_class_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_class_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_class_ref_element.h"
sdtmig_class_ref_element_t* instantiate_sdtmig_class_ref_element(int include_optional);



sdtmig_class_ref_element_t* instantiate_sdtmig_class_ref_element(int include_optional) {
  sdtmig_class_ref_element_t* sdtmig_class_ref_element = NULL;
  if (include_optional) {
    sdtmig_class_ref_element = sdtmig_class_ref_element_create(
      "/mdr/sdtmig/3-3/classes/Findings",
      "Findings Observation Class",
      "Class"
    );
  } else {
    sdtmig_class_ref_element = sdtmig_class_ref_element_create(
      "/mdr/sdtmig/3-3/classes/Findings",
      "Findings Observation Class",
      "Class"
    );
  }

  return sdtmig_class_ref_element;
}


#ifdef sdtmig_class_ref_element_MAIN

void test_sdtmig_class_ref_element(int include_optional) {
    sdtmig_class_ref_element_t* sdtmig_class_ref_element_1 = instantiate_sdtmig_class_ref_element(include_optional);

	cJSON* jsonsdtmig_class_ref_element_1 = sdtmig_class_ref_element_convertToJSON(sdtmig_class_ref_element_1);
	printf("sdtmig_class_ref_element :\n%s\n", cJSON_Print(jsonsdtmig_class_ref_element_1));
	sdtmig_class_ref_element_t* sdtmig_class_ref_element_2 = sdtmig_class_ref_element_parseFromJSON(jsonsdtmig_class_ref_element_1);
	cJSON* jsonsdtmig_class_ref_element_2 = sdtmig_class_ref_element_convertToJSON(sdtmig_class_ref_element_2);
	printf("repeating sdtmig_class_ref_element:\n%s\n", cJSON_Print(jsonsdtmig_class_ref_element_2));
}

int main() {
  test_sdtmig_class_ref_element(1);
  test_sdtmig_class_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_class_ref_element_MAIN
#endif // sdtmig_class_ref_element_TEST
