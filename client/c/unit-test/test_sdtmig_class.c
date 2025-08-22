#ifndef sdtmig_class_TEST
#define sdtmig_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_class.h"
sdtmig_class_t* instantiate_sdtmig_class(int include_optional);

#include "test_sdtmig_class_links.c"


sdtmig_class_t* instantiate_sdtmig_class(int include_optional) {
  sdtmig_class_t* sdtmig_class = NULL;
  if (include_optional) {
    sdtmig_class = sdtmig_class_create(
      "5",
      "Findings",
      "Findings Observation Class",
      "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)",
       // false, not to have infinite recursion
      instantiate_sdtmig_class_links(0),
      list_createList()
    );
  } else {
    sdtmig_class = sdtmig_class_create(
      "5",
      "Findings",
      "Findings Observation Class",
      "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)",
      NULL,
      list_createList()
    );
  }

  return sdtmig_class;
}


#ifdef sdtmig_class_MAIN

void test_sdtmig_class(int include_optional) {
    sdtmig_class_t* sdtmig_class_1 = instantiate_sdtmig_class(include_optional);

	cJSON* jsonsdtmig_class_1 = sdtmig_class_convertToJSON(sdtmig_class_1);
	printf("sdtmig_class :\n%s\n", cJSON_Print(jsonsdtmig_class_1));
	sdtmig_class_t* sdtmig_class_2 = sdtmig_class_parseFromJSON(jsonsdtmig_class_1);
	cJSON* jsonsdtmig_class_2 = sdtmig_class_convertToJSON(sdtmig_class_2);
	printf("repeating sdtmig_class:\n%s\n", cJSON_Print(jsonsdtmig_class_2));
}

int main() {
  test_sdtmig_class(1);
  test_sdtmig_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_class_MAIN
#endif // sdtmig_class_TEST
