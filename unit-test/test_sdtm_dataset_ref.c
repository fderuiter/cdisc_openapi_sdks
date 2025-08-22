#ifndef sdtm_dataset_ref_TEST
#define sdtm_dataset_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset_ref.h"
sdtm_dataset_ref_t* instantiate_sdtm_dataset_ref(int include_optional);



sdtm_dataset_ref_t* instantiate_sdtm_dataset_ref(int include_optional) {
  sdtm_dataset_ref_t* sdtm_dataset_ref = NULL;
  if (include_optional) {
    sdtm_dataset_ref = sdtm_dataset_ref_create(
      "/mdr/sdtm/1-8/datasets/DM",
      "Demographics",
      "SDTM Dataset"
    );
  } else {
    sdtm_dataset_ref = sdtm_dataset_ref_create(
      "/mdr/sdtm/1-8/datasets/DM",
      "Demographics",
      "SDTM Dataset"
    );
  }

  return sdtm_dataset_ref;
}


#ifdef sdtm_dataset_ref_MAIN

void test_sdtm_dataset_ref(int include_optional) {
    sdtm_dataset_ref_t* sdtm_dataset_ref_1 = instantiate_sdtm_dataset_ref(include_optional);

	cJSON* jsonsdtm_dataset_ref_1 = sdtm_dataset_ref_convertToJSON(sdtm_dataset_ref_1);
	printf("sdtm_dataset_ref :\n%s\n", cJSON_Print(jsonsdtm_dataset_ref_1));
	sdtm_dataset_ref_t* sdtm_dataset_ref_2 = sdtm_dataset_ref_parseFromJSON(jsonsdtm_dataset_ref_1);
	cJSON* jsonsdtm_dataset_ref_2 = sdtm_dataset_ref_convertToJSON(sdtm_dataset_ref_2);
	printf("repeating sdtm_dataset_ref:\n%s\n", cJSON_Print(jsonsdtm_dataset_ref_2));
}

int main() {
  test_sdtm_dataset_ref(1);
  test_sdtm_dataset_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_ref_MAIN
#endif // sdtm_dataset_ref_TEST
