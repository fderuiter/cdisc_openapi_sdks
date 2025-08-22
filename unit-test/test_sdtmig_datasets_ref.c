#ifndef sdtmig_datasets_ref_TEST
#define sdtmig_datasets_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_datasets_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_datasets_ref.h"
sdtmig_datasets_ref_t* instantiate_sdtmig_datasets_ref(int include_optional);



sdtmig_datasets_ref_t* instantiate_sdtmig_datasets_ref(int include_optional) {
  sdtmig_datasets_ref_t* sdtmig_datasets_ref = NULL;
  if (include_optional) {
    sdtmig_datasets_ref = sdtmig_datasets_ref_create(
      "/mdr/sdtmig/3-3/datasets",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "SDTMIG Dataset List"
    );
  } else {
    sdtmig_datasets_ref = sdtmig_datasets_ref_create(
      "/mdr/sdtmig/3-3/datasets",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "SDTMIG Dataset List"
    );
  }

  return sdtmig_datasets_ref;
}


#ifdef sdtmig_datasets_ref_MAIN

void test_sdtmig_datasets_ref(int include_optional) {
    sdtmig_datasets_ref_t* sdtmig_datasets_ref_1 = instantiate_sdtmig_datasets_ref(include_optional);

	cJSON* jsonsdtmig_datasets_ref_1 = sdtmig_datasets_ref_convertToJSON(sdtmig_datasets_ref_1);
	printf("sdtmig_datasets_ref :\n%s\n", cJSON_Print(jsonsdtmig_datasets_ref_1));
	sdtmig_datasets_ref_t* sdtmig_datasets_ref_2 = sdtmig_datasets_ref_parseFromJSON(jsonsdtmig_datasets_ref_1);
	cJSON* jsonsdtmig_datasets_ref_2 = sdtmig_datasets_ref_convertToJSON(sdtmig_datasets_ref_2);
	printf("repeating sdtmig_datasets_ref:\n%s\n", cJSON_Print(jsonsdtmig_datasets_ref_2));
}

int main() {
  test_sdtmig_datasets_ref(1);
  test_sdtmig_datasets_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_datasets_ref_MAIN
#endif // sdtmig_datasets_ref_TEST
