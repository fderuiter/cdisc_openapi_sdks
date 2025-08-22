#ifndef sdtmig_classes_TEST
#define sdtmig_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_classes.h"
sdtmig_classes_t* instantiate_sdtmig_classes(int include_optional);

#include "test_sdtmig_classes_links.c"


sdtmig_classes_t* instantiate_sdtmig_classes(int include_optional) {
  sdtmig_classes_t* sdtmig_classes = NULL;
  if (include_optional) {
    sdtmig_classes = sdtmig_classes_create(
      "SDTMIG v3.3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "Prepared by the CDISC Submission Data Standards Team",
      "2018-11-20",
      "Final",
      "3.3",
       // false, not to have infinite recursion
      instantiate_sdtmig_classes_links(0)
    );
  } else {
    sdtmig_classes = sdtmig_classes_create(
      "SDTMIG v3.3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "Prepared by the CDISC Submission Data Standards Team",
      "2018-11-20",
      "Final",
      "3.3",
      NULL
    );
  }

  return sdtmig_classes;
}


#ifdef sdtmig_classes_MAIN

void test_sdtmig_classes(int include_optional) {
    sdtmig_classes_t* sdtmig_classes_1 = instantiate_sdtmig_classes(include_optional);

	cJSON* jsonsdtmig_classes_1 = sdtmig_classes_convertToJSON(sdtmig_classes_1);
	printf("sdtmig_classes :\n%s\n", cJSON_Print(jsonsdtmig_classes_1));
	sdtmig_classes_t* sdtmig_classes_2 = sdtmig_classes_parseFromJSON(jsonsdtmig_classes_1);
	cJSON* jsonsdtmig_classes_2 = sdtmig_classes_convertToJSON(sdtmig_classes_2);
	printf("repeating sdtmig_classes:\n%s\n", cJSON_Print(jsonsdtmig_classes_2));
}

int main() {
  test_sdtmig_classes(1);
  test_sdtmig_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_classes_MAIN
#endif // sdtmig_classes_TEST
