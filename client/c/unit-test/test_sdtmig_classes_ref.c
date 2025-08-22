#ifndef sdtmig_classes_ref_TEST
#define sdtmig_classes_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_classes_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_classes_ref.h"
sdtmig_classes_ref_t* instantiate_sdtmig_classes_ref(int include_optional);



sdtmig_classes_ref_t* instantiate_sdtmig_classes_ref(int include_optional) {
  sdtmig_classes_ref_t* sdtmig_classes_ref = NULL;
  if (include_optional) {
    sdtmig_classes_ref = sdtmig_classes_ref_create(
      "/mdr/sdtmig/3-3/classes/Findings",
      "Findings Observation Class",
      "Class"
    );
  } else {
    sdtmig_classes_ref = sdtmig_classes_ref_create(
      "/mdr/sdtmig/3-3/classes/Findings",
      "Findings Observation Class",
      "Class"
    );
  }

  return sdtmig_classes_ref;
}


#ifdef sdtmig_classes_ref_MAIN

void test_sdtmig_classes_ref(int include_optional) {
    sdtmig_classes_ref_t* sdtmig_classes_ref_1 = instantiate_sdtmig_classes_ref(include_optional);

	cJSON* jsonsdtmig_classes_ref_1 = sdtmig_classes_ref_convertToJSON(sdtmig_classes_ref_1);
	printf("sdtmig_classes_ref :\n%s\n", cJSON_Print(jsonsdtmig_classes_ref_1));
	sdtmig_classes_ref_t* sdtmig_classes_ref_2 = sdtmig_classes_ref_parseFromJSON(jsonsdtmig_classes_ref_1);
	cJSON* jsonsdtmig_classes_ref_2 = sdtmig_classes_ref_convertToJSON(sdtmig_classes_ref_2);
	printf("repeating sdtmig_classes_ref:\n%s\n", cJSON_Print(jsonsdtmig_classes_ref_2));
}

int main() {
  test_sdtmig_classes_ref(1);
  test_sdtmig_classes_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_classes_ref_MAIN
#endif // sdtmig_classes_ref_TEST
