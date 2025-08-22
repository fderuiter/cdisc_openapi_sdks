#ifndef sdtmig_dataset_variable_ref_TEST
#define sdtmig_dataset_variable_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variable_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variable_ref.h"
sdtmig_dataset_variable_ref_t* instantiate_sdtmig_dataset_variable_ref(int include_optional);



sdtmig_dataset_variable_ref_t* instantiate_sdtmig_dataset_variable_ref(int include_optional) {
  sdtmig_dataset_variable_ref_t* sdtmig_dataset_variable_ref = NULL;
  if (include_optional) {
    sdtmig_dataset_variable_ref = sdtmig_dataset_variable_ref_create(
      "/mdr/sdtmig/3-3/datasets/LB/variables/LBDTC",
      "Date/Time of Specimen Collection",
      "SDTM Dataset Variable"
    );
  } else {
    sdtmig_dataset_variable_ref = sdtmig_dataset_variable_ref_create(
      "/mdr/sdtmig/3-3/datasets/LB/variables/LBDTC",
      "Date/Time of Specimen Collection",
      "SDTM Dataset Variable"
    );
  }

  return sdtmig_dataset_variable_ref;
}


#ifdef sdtmig_dataset_variable_ref_MAIN

void test_sdtmig_dataset_variable_ref(int include_optional) {
    sdtmig_dataset_variable_ref_t* sdtmig_dataset_variable_ref_1 = instantiate_sdtmig_dataset_variable_ref(include_optional);

	cJSON* jsonsdtmig_dataset_variable_ref_1 = sdtmig_dataset_variable_ref_convertToJSON(sdtmig_dataset_variable_ref_1);
	printf("sdtmig_dataset_variable_ref :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_ref_1));
	sdtmig_dataset_variable_ref_t* sdtmig_dataset_variable_ref_2 = sdtmig_dataset_variable_ref_parseFromJSON(jsonsdtmig_dataset_variable_ref_1);
	cJSON* jsonsdtmig_dataset_variable_ref_2 = sdtmig_dataset_variable_ref_convertToJSON(sdtmig_dataset_variable_ref_2);
	printf("repeating sdtmig_dataset_variable_ref:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_ref_2));
}

int main() {
  test_sdtmig_dataset_variable_ref(1);
  test_sdtmig_dataset_variable_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variable_ref_MAIN
#endif // sdtmig_dataset_variable_ref_TEST
