#ifndef sdtmig_class_ref_subclass_TEST
#define sdtmig_class_ref_subclass_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_class_ref_subclass_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_class_ref_subclass.h"
sdtmig_class_ref_subclass_t* instantiate_sdtmig_class_ref_subclass(int include_optional);



sdtmig_class_ref_subclass_t* instantiate_sdtmig_class_ref_subclass(int include_optional) {
  sdtmig_class_ref_subclass_t* sdtmig_class_ref_subclass = NULL;
  if (include_optional) {
    sdtmig_class_ref_subclass = sdtmig_class_ref_subclass_create(
      "/mdr/sdtmig/3-3/classes/FindingsAbout",
      "Findings About Events or Interventions",
      "Class"
    );
  } else {
    sdtmig_class_ref_subclass = sdtmig_class_ref_subclass_create(
      "/mdr/sdtmig/3-3/classes/FindingsAbout",
      "Findings About Events or Interventions",
      "Class"
    );
  }

  return sdtmig_class_ref_subclass;
}


#ifdef sdtmig_class_ref_subclass_MAIN

void test_sdtmig_class_ref_subclass(int include_optional) {
    sdtmig_class_ref_subclass_t* sdtmig_class_ref_subclass_1 = instantiate_sdtmig_class_ref_subclass(include_optional);

	cJSON* jsonsdtmig_class_ref_subclass_1 = sdtmig_class_ref_subclass_convertToJSON(sdtmig_class_ref_subclass_1);
	printf("sdtmig_class_ref_subclass :\n%s\n", cJSON_Print(jsonsdtmig_class_ref_subclass_1));
	sdtmig_class_ref_subclass_t* sdtmig_class_ref_subclass_2 = sdtmig_class_ref_subclass_parseFromJSON(jsonsdtmig_class_ref_subclass_1);
	cJSON* jsonsdtmig_class_ref_subclass_2 = sdtmig_class_ref_subclass_convertToJSON(sdtmig_class_ref_subclass_2);
	printf("repeating sdtmig_class_ref_subclass:\n%s\n", cJSON_Print(jsonsdtmig_class_ref_subclass_2));
}

int main() {
  test_sdtmig_class_ref_subclass(1);
  test_sdtmig_class_ref_subclass(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_class_ref_subclass_MAIN
#endif // sdtmig_class_ref_subclass_TEST
