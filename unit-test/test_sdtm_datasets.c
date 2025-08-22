#ifndef sdtm_datasets_TEST
#define sdtm_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_datasets.h"
sdtm_datasets_t* instantiate_sdtm_datasets(int include_optional);

#include "test_sdtm_datasets_links.c"


sdtm_datasets_t* instantiate_sdtm_datasets(int include_optional) {
  sdtm_datasets_t* sdtm_datasets = NULL;
  if (include_optional) {
    sdtm_datasets = sdtm_datasets_create(
      "SDTM v1.8",
      "Study Data Tabulation Model Version 1.8 (Final)",
      "This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.",
      "CDISC Submission Data Standards Team and CDISC SDTM Governance Committee",
      "2019-09-17",
      "Final",
      "1.8",
       // false, not to have infinite recursion
      instantiate_sdtm_datasets_links(0)
    );
  } else {
    sdtm_datasets = sdtm_datasets_create(
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

  return sdtm_datasets;
}


#ifdef sdtm_datasets_MAIN

void test_sdtm_datasets(int include_optional) {
    sdtm_datasets_t* sdtm_datasets_1 = instantiate_sdtm_datasets(include_optional);

	cJSON* jsonsdtm_datasets_1 = sdtm_datasets_convertToJSON(sdtm_datasets_1);
	printf("sdtm_datasets :\n%s\n", cJSON_Print(jsonsdtm_datasets_1));
	sdtm_datasets_t* sdtm_datasets_2 = sdtm_datasets_parseFromJSON(jsonsdtm_datasets_1);
	cJSON* jsonsdtm_datasets_2 = sdtm_datasets_convertToJSON(sdtm_datasets_2);
	printf("repeating sdtm_datasets:\n%s\n", cJSON_Print(jsonsdtm_datasets_2));
}

int main() {
  test_sdtm_datasets(1);
  test_sdtm_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_datasets_MAIN
#endif // sdtm_datasets_TEST
