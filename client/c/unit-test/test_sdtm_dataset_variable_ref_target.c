#ifndef sdtm_dataset_variable_ref_target_TEST
#define sdtm_dataset_variable_ref_target_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_variable_ref_target_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset_variable_ref_target.h"
sdtm_dataset_variable_ref_target_t* instantiate_sdtm_dataset_variable_ref_target(int include_optional);



sdtm_dataset_variable_ref_target_t* instantiate_sdtm_dataset_variable_ref_target(int include_optional) {
  sdtm_dataset_variable_ref_target_t* sdtm_dataset_variable_ref_target = NULL;
  if (include_optional) {
    sdtm_dataset_variable_ref_target = sdtm_dataset_variable_ref_target_create(
      "/mdr/sdtm/1-8/datasets/DM/variables/SUBJID",
      "Subject Identifier for the Study",
      "SDTM Dataset Variable"
    );
  } else {
    sdtm_dataset_variable_ref_target = sdtm_dataset_variable_ref_target_create(
      "/mdr/sdtm/1-8/datasets/DM/variables/SUBJID",
      "Subject Identifier for the Study",
      "SDTM Dataset Variable"
    );
  }

  return sdtm_dataset_variable_ref_target;
}


#ifdef sdtm_dataset_variable_ref_target_MAIN

void test_sdtm_dataset_variable_ref_target(int include_optional) {
    sdtm_dataset_variable_ref_target_t* sdtm_dataset_variable_ref_target_1 = instantiate_sdtm_dataset_variable_ref_target(include_optional);

	cJSON* jsonsdtm_dataset_variable_ref_target_1 = sdtm_dataset_variable_ref_target_convertToJSON(sdtm_dataset_variable_ref_target_1);
	printf("sdtm_dataset_variable_ref_target :\n%s\n", cJSON_Print(jsonsdtm_dataset_variable_ref_target_1));
	sdtm_dataset_variable_ref_target_t* sdtm_dataset_variable_ref_target_2 = sdtm_dataset_variable_ref_target_parseFromJSON(jsonsdtm_dataset_variable_ref_target_1);
	cJSON* jsonsdtm_dataset_variable_ref_target_2 = sdtm_dataset_variable_ref_target_convertToJSON(sdtm_dataset_variable_ref_target_2);
	printf("repeating sdtm_dataset_variable_ref_target:\n%s\n", cJSON_Print(jsonsdtm_dataset_variable_ref_target_2));
}

int main() {
  test_sdtm_dataset_variable_ref_target(1);
  test_sdtm_dataset_variable_ref_target(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_variable_ref_target_MAIN
#endif // sdtm_dataset_variable_ref_target_TEST
