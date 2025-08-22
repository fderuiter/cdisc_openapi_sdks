#ifndef sdtm_class_ref_subclass_TEST
#define sdtm_class_ref_subclass_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_ref_subclass_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_ref_subclass.h"
sdtm_class_ref_subclass_t* instantiate_sdtm_class_ref_subclass(int include_optional);



sdtm_class_ref_subclass_t* instantiate_sdtm_class_ref_subclass(int include_optional) {
  sdtm_class_ref_subclass_t* sdtm_class_ref_subclass = NULL;
  if (include_optional) {
    sdtm_class_ref_subclass = sdtm_class_ref_subclass_create(
      "/mdr/sdtm/1-8/classes/FindingsAbout",
      "Findings About Events or Interventions",
      "Class"
    );
  } else {
    sdtm_class_ref_subclass = sdtm_class_ref_subclass_create(
      "/mdr/sdtm/1-8/classes/FindingsAbout",
      "Findings About Events or Interventions",
      "Class"
    );
  }

  return sdtm_class_ref_subclass;
}


#ifdef sdtm_class_ref_subclass_MAIN

void test_sdtm_class_ref_subclass(int include_optional) {
    sdtm_class_ref_subclass_t* sdtm_class_ref_subclass_1 = instantiate_sdtm_class_ref_subclass(include_optional);

	cJSON* jsonsdtm_class_ref_subclass_1 = sdtm_class_ref_subclass_convertToJSON(sdtm_class_ref_subclass_1);
	printf("sdtm_class_ref_subclass :\n%s\n", cJSON_Print(jsonsdtm_class_ref_subclass_1));
	sdtm_class_ref_subclass_t* sdtm_class_ref_subclass_2 = sdtm_class_ref_subclass_parseFromJSON(jsonsdtm_class_ref_subclass_1);
	cJSON* jsonsdtm_class_ref_subclass_2 = sdtm_class_ref_subclass_convertToJSON(sdtm_class_ref_subclass_2);
	printf("repeating sdtm_class_ref_subclass:\n%s\n", cJSON_Print(jsonsdtm_class_ref_subclass_2));
}

int main() {
  test_sdtm_class_ref_subclass(1);
  test_sdtm_class_ref_subclass(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_ref_subclass_MAIN
#endif // sdtm_class_ref_subclass_TEST
