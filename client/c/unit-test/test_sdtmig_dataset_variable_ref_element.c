#ifndef sdtmig_dataset_variable_ref_element_TEST
#define sdtmig_dataset_variable_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variable_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variable_ref_element.h"
sdtmig_dataset_variable_ref_element_t* instantiate_sdtmig_dataset_variable_ref_element(int include_optional);



sdtmig_dataset_variable_ref_element_t* instantiate_sdtmig_dataset_variable_ref_element(int include_optional) {
  sdtmig_dataset_variable_ref_element_t* sdtmig_dataset_variable_ref_element = NULL;
  if (include_optional) {
    sdtmig_dataset_variable_ref_element = sdtmig_dataset_variable_ref_element_create(
      "/mdr/sdtmig/3-3/datasets/LB/variables/LBDTC",
      "Date/Time of Specimen Collection",
      "SDTM Dataset Variable"
    );
  } else {
    sdtmig_dataset_variable_ref_element = sdtmig_dataset_variable_ref_element_create(
      "/mdr/sdtmig/3-3/datasets/LB/variables/LBDTC",
      "Date/Time of Specimen Collection",
      "SDTM Dataset Variable"
    );
  }

  return sdtmig_dataset_variable_ref_element;
}


#ifdef sdtmig_dataset_variable_ref_element_MAIN

void test_sdtmig_dataset_variable_ref_element(int include_optional) {
    sdtmig_dataset_variable_ref_element_t* sdtmig_dataset_variable_ref_element_1 = instantiate_sdtmig_dataset_variable_ref_element(include_optional);

	cJSON* jsonsdtmig_dataset_variable_ref_element_1 = sdtmig_dataset_variable_ref_element_convertToJSON(sdtmig_dataset_variable_ref_element_1);
	printf("sdtmig_dataset_variable_ref_element :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_ref_element_1));
	sdtmig_dataset_variable_ref_element_t* sdtmig_dataset_variable_ref_element_2 = sdtmig_dataset_variable_ref_element_parseFromJSON(jsonsdtmig_dataset_variable_ref_element_1);
	cJSON* jsonsdtmig_dataset_variable_ref_element_2 = sdtmig_dataset_variable_ref_element_convertToJSON(sdtmig_dataset_variable_ref_element_2);
	printf("repeating sdtmig_dataset_variable_ref_element:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_ref_element_2));
}

int main() {
  test_sdtmig_dataset_variable_ref_element(1);
  test_sdtmig_dataset_variable_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variable_ref_element_MAIN
#endif // sdtmig_dataset_variable_ref_element_TEST
