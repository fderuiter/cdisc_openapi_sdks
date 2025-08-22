#ifndef sdtm_classes_ref_TEST
#define sdtm_classes_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_classes_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_classes_ref.h"
sdtm_classes_ref_t* instantiate_sdtm_classes_ref(int include_optional);



sdtm_classes_ref_t* instantiate_sdtm_classes_ref(int include_optional) {
  sdtm_classes_ref_t* sdtm_classes_ref = NULL;
  if (include_optional) {
    sdtm_classes_ref = sdtm_classes_ref_create(
      "/mdr/sdtm/1-8/classes",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "SDTM Class List"
    );
  } else {
    sdtm_classes_ref = sdtm_classes_ref_create(
      "/mdr/sdtm/1-8/classes",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "SDTM Class List"
    );
  }

  return sdtm_classes_ref;
}


#ifdef sdtm_classes_ref_MAIN

void test_sdtm_classes_ref(int include_optional) {
    sdtm_classes_ref_t* sdtm_classes_ref_1 = instantiate_sdtm_classes_ref(include_optional);

	cJSON* jsonsdtm_classes_ref_1 = sdtm_classes_ref_convertToJSON(sdtm_classes_ref_1);
	printf("sdtm_classes_ref :\n%s\n", cJSON_Print(jsonsdtm_classes_ref_1));
	sdtm_classes_ref_t* sdtm_classes_ref_2 = sdtm_classes_ref_parseFromJSON(jsonsdtm_classes_ref_1);
	cJSON* jsonsdtm_classes_ref_2 = sdtm_classes_ref_convertToJSON(sdtm_classes_ref_2);
	printf("repeating sdtm_classes_ref:\n%s\n", cJSON_Print(jsonsdtm_classes_ref_2));
}

int main() {
  test_sdtm_classes_ref(1);
  test_sdtm_classes_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_classes_ref_MAIN
#endif // sdtm_classes_ref_TEST
