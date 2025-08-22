#ifndef sdtm_dataset_variables_ref_TEST
#define sdtm_dataset_variables_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_variables_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset_variables_ref.h"
sdtm_dataset_variables_ref_t* instantiate_sdtm_dataset_variables_ref(int include_optional);



sdtm_dataset_variables_ref_t* instantiate_sdtm_dataset_variables_ref(int include_optional) {
  sdtm_dataset_variables_ref_t* sdtm_dataset_variables_ref = NULL;
  if (include_optional) {
    sdtm_dataset_variables_ref = sdtm_dataset_variables_ref_create(
      "/mdr/sdtm/1-8/datasets/DM/variables",
      "Demographics",
      "SDTM Dataset Variable List"
    );
  } else {
    sdtm_dataset_variables_ref = sdtm_dataset_variables_ref_create(
      "/mdr/sdtm/1-8/datasets/DM/variables",
      "Demographics",
      "SDTM Dataset Variable List"
    );
  }

  return sdtm_dataset_variables_ref;
}


#ifdef sdtm_dataset_variables_ref_MAIN

void test_sdtm_dataset_variables_ref(int include_optional) {
    sdtm_dataset_variables_ref_t* sdtm_dataset_variables_ref_1 = instantiate_sdtm_dataset_variables_ref(include_optional);

	cJSON* jsonsdtm_dataset_variables_ref_1 = sdtm_dataset_variables_ref_convertToJSON(sdtm_dataset_variables_ref_1);
	printf("sdtm_dataset_variables_ref :\n%s\n", cJSON_Print(jsonsdtm_dataset_variables_ref_1));
	sdtm_dataset_variables_ref_t* sdtm_dataset_variables_ref_2 = sdtm_dataset_variables_ref_parseFromJSON(jsonsdtm_dataset_variables_ref_1);
	cJSON* jsonsdtm_dataset_variables_ref_2 = sdtm_dataset_variables_ref_convertToJSON(sdtm_dataset_variables_ref_2);
	printf("repeating sdtm_dataset_variables_ref:\n%s\n", cJSON_Print(jsonsdtm_dataset_variables_ref_2));
}

int main() {
  test_sdtm_dataset_variables_ref(1);
  test_sdtm_dataset_variables_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_variables_ref_MAIN
#endif // sdtm_dataset_variables_ref_TEST
