#ifndef sdtmig_dataset_variable_ref_version_TEST
#define sdtmig_dataset_variable_ref_version_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variable_ref_version_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variable_ref_version.h"
sdtmig_dataset_variable_ref_version_t* instantiate_sdtmig_dataset_variable_ref_version(int include_optional);



sdtmig_dataset_variable_ref_version_t* instantiate_sdtmig_dataset_variable_ref_version(int include_optional) {
  sdtmig_dataset_variable_ref_version_t* sdtmig_dataset_variable_ref_version = NULL;
  if (include_optional) {
    sdtmig_dataset_variable_ref_version = sdtmig_dataset_variable_ref_version_create(
      "/mdr/sdtmig/3-2/datasets/LB/variables/LBDTC",
      "Date/Time of Specimen Collection",
      "SDTM Dataset Variable"
    );
  } else {
    sdtmig_dataset_variable_ref_version = sdtmig_dataset_variable_ref_version_create(
      "/mdr/sdtmig/3-2/datasets/LB/variables/LBDTC",
      "Date/Time of Specimen Collection",
      "SDTM Dataset Variable"
    );
  }

  return sdtmig_dataset_variable_ref_version;
}


#ifdef sdtmig_dataset_variable_ref_version_MAIN

void test_sdtmig_dataset_variable_ref_version(int include_optional) {
    sdtmig_dataset_variable_ref_version_t* sdtmig_dataset_variable_ref_version_1 = instantiate_sdtmig_dataset_variable_ref_version(include_optional);

	cJSON* jsonsdtmig_dataset_variable_ref_version_1 = sdtmig_dataset_variable_ref_version_convertToJSON(sdtmig_dataset_variable_ref_version_1);
	printf("sdtmig_dataset_variable_ref_version :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_ref_version_1));
	sdtmig_dataset_variable_ref_version_t* sdtmig_dataset_variable_ref_version_2 = sdtmig_dataset_variable_ref_version_parseFromJSON(jsonsdtmig_dataset_variable_ref_version_1);
	cJSON* jsonsdtmig_dataset_variable_ref_version_2 = sdtmig_dataset_variable_ref_version_convertToJSON(sdtmig_dataset_variable_ref_version_2);
	printf("repeating sdtmig_dataset_variable_ref_version:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_ref_version_2));
}

int main() {
  test_sdtmig_dataset_variable_ref_version(1);
  test_sdtmig_dataset_variable_ref_version(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variable_ref_version_MAIN
#endif // sdtmig_dataset_variable_ref_version_TEST
