#ifndef sdtm_classes_TEST
#define sdtm_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_classes.h"
sdtm_classes_t* instantiate_sdtm_classes(int include_optional);

#include "test_sdtm_classes_links.c"


sdtm_classes_t* instantiate_sdtm_classes(int include_optional) {
  sdtm_classes_t* sdtm_classes = NULL;
  if (include_optional) {
    sdtm_classes = sdtm_classes_create(
      "SDTM v1.8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.",
      "CDISC Submission Data Standards Team and CDISC SDTM Governance Committee",
      "2019-09-17",
      "Final",
      "1.8",
       // false, not to have infinite recursion
      instantiate_sdtm_classes_links(0)
    );
  } else {
    sdtm_classes = sdtm_classes_create(
      "SDTM v1.8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.",
      "CDISC Submission Data Standards Team and CDISC SDTM Governance Committee",
      "2019-09-17",
      "Final",
      "1.8",
      NULL
    );
  }

  return sdtm_classes;
}


#ifdef sdtm_classes_MAIN

void test_sdtm_classes(int include_optional) {
    sdtm_classes_t* sdtm_classes_1 = instantiate_sdtm_classes(include_optional);

	cJSON* jsonsdtm_classes_1 = sdtm_classes_convertToJSON(sdtm_classes_1);
	printf("sdtm_classes :\n%s\n", cJSON_Print(jsonsdtm_classes_1));
	sdtm_classes_t* sdtm_classes_2 = sdtm_classes_parseFromJSON(jsonsdtm_classes_1);
	cJSON* jsonsdtm_classes_2 = sdtm_classes_convertToJSON(sdtm_classes_2);
	printf("repeating sdtm_classes:\n%s\n", cJSON_Print(jsonsdtm_classes_2));
}

int main() {
  test_sdtm_classes(1);
  test_sdtm_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_classes_MAIN
#endif // sdtm_classes_TEST
