#ifndef sdtmig_datasets_TEST
#define sdtmig_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_datasets.h"
sdtmig_datasets_t* instantiate_sdtmig_datasets(int include_optional);

#include "test_sdtmig_datasets_links.c"


sdtmig_datasets_t* instantiate_sdtmig_datasets(int include_optional) {
  sdtmig_datasets_t* sdtmig_datasets = NULL;
  if (include_optional) {
    sdtmig_datasets = sdtmig_datasets_create(
      "SDTMIG v3.3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "2018-11-20",
      "Final",
      "3.3",
       // false, not to have infinite recursion
      instantiate_sdtmig_datasets_links(0)
    );
  } else {
    sdtmig_datasets = sdtmig_datasets_create(
      "SDTMIG v3.3",
      "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.",
      "2018-11-20",
      "Final",
      "3.3",
      NULL
    );
  }

  return sdtmig_datasets;
}


#ifdef sdtmig_datasets_MAIN

void test_sdtmig_datasets(int include_optional) {
    sdtmig_datasets_t* sdtmig_datasets_1 = instantiate_sdtmig_datasets(include_optional);

	cJSON* jsonsdtmig_datasets_1 = sdtmig_datasets_convertToJSON(sdtmig_datasets_1);
	printf("sdtmig_datasets :\n%s\n", cJSON_Print(jsonsdtmig_datasets_1));
	sdtmig_datasets_t* sdtmig_datasets_2 = sdtmig_datasets_parseFromJSON(jsonsdtmig_datasets_1);
	cJSON* jsonsdtmig_datasets_2 = sdtmig_datasets_convertToJSON(sdtmig_datasets_2);
	printf("repeating sdtmig_datasets:\n%s\n", cJSON_Print(jsonsdtmig_datasets_2));
}

int main() {
  test_sdtmig_datasets(1);
  test_sdtmig_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_datasets_MAIN
#endif // sdtmig_datasets_TEST
