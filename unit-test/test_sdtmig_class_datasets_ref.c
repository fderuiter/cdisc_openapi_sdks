#ifndef sdtmig_class_datasets_ref_TEST
#define sdtmig_class_datasets_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_class_datasets_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_class_datasets_ref.h"
sdtmig_class_datasets_ref_t* instantiate_sdtmig_class_datasets_ref(int include_optional);



sdtmig_class_datasets_ref_t* instantiate_sdtmig_class_datasets_ref(int include_optional) {
  sdtmig_class_datasets_ref_t* sdtmig_class_datasets_ref = NULL;
  if (include_optional) {
    sdtmig_class_datasets_ref = sdtmig_class_datasets_ref_create(
      "/mdr/sdtmig/3-3/classes/Findings/datasets",
      "Findings Observation Class",
      "SDTMIG Class Dataset List"
    );
  } else {
    sdtmig_class_datasets_ref = sdtmig_class_datasets_ref_create(
      "/mdr/sdtmig/3-3/classes/Findings/datasets",
      "Findings Observation Class",
      "SDTMIG Class Dataset List"
    );
  }

  return sdtmig_class_datasets_ref;
}


#ifdef sdtmig_class_datasets_ref_MAIN

void test_sdtmig_class_datasets_ref(int include_optional) {
    sdtmig_class_datasets_ref_t* sdtmig_class_datasets_ref_1 = instantiate_sdtmig_class_datasets_ref(include_optional);

	cJSON* jsonsdtmig_class_datasets_ref_1 = sdtmig_class_datasets_ref_convertToJSON(sdtmig_class_datasets_ref_1);
	printf("sdtmig_class_datasets_ref :\n%s\n", cJSON_Print(jsonsdtmig_class_datasets_ref_1));
	sdtmig_class_datasets_ref_t* sdtmig_class_datasets_ref_2 = sdtmig_class_datasets_ref_parseFromJSON(jsonsdtmig_class_datasets_ref_1);
	cJSON* jsonsdtmig_class_datasets_ref_2 = sdtmig_class_datasets_ref_convertToJSON(sdtmig_class_datasets_ref_2);
	printf("repeating sdtmig_class_datasets_ref:\n%s\n", cJSON_Print(jsonsdtmig_class_datasets_ref_2));
}

int main() {
  test_sdtmig_class_datasets_ref(1);
  test_sdtmig_class_datasets_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_class_datasets_ref_MAIN
#endif // sdtmig_class_datasets_ref_TEST
