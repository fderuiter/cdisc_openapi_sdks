#ifndef sdtm_class_datasets_TEST
#define sdtm_class_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_datasets.h"
sdtm_class_datasets_t* instantiate_sdtm_class_datasets(int include_optional);

#include "test_sdtm_class_datasets_links.c"


sdtm_class_datasets_t* instantiate_sdtm_class_datasets(int include_optional) {
  sdtm_class_datasets_t* sdtm_class_datasets = NULL;
  if (include_optional) {
    sdtm_class_datasets = sdtm_class_datasets_create(
      "6",
      "Special-Purpose",
      "Special-Purpose Datasets",
      "This SDTM class contains a set of domains which do not conform to the Findings, Events or Interventions observation classes. The domains included are DM, CO, SE and SV. (Source: CDISC Controlled Terminology, GNRLOBSC, C103377, 2018-06-29)",
       // false, not to have infinite recursion
      instantiate_sdtm_class_datasets_links(0)
    );
  } else {
    sdtm_class_datasets = sdtm_class_datasets_create(
      "6",
      "Special-Purpose",
      "Special-Purpose Datasets",
      "This SDTM class contains a set of domains which do not conform to the Findings, Events or Interventions observation classes. The domains included are DM, CO, SE and SV. (Source: CDISC Controlled Terminology, GNRLOBSC, C103377, 2018-06-29)",
      NULL
    );
  }

  return sdtm_class_datasets;
}


#ifdef sdtm_class_datasets_MAIN

void test_sdtm_class_datasets(int include_optional) {
    sdtm_class_datasets_t* sdtm_class_datasets_1 = instantiate_sdtm_class_datasets(include_optional);

	cJSON* jsonsdtm_class_datasets_1 = sdtm_class_datasets_convertToJSON(sdtm_class_datasets_1);
	printf("sdtm_class_datasets :\n%s\n", cJSON_Print(jsonsdtm_class_datasets_1));
	sdtm_class_datasets_t* sdtm_class_datasets_2 = sdtm_class_datasets_parseFromJSON(jsonsdtm_class_datasets_1);
	cJSON* jsonsdtm_class_datasets_2 = sdtm_class_datasets_convertToJSON(sdtm_class_datasets_2);
	printf("repeating sdtm_class_datasets:\n%s\n", cJSON_Print(jsonsdtm_class_datasets_2));
}

int main() {
  test_sdtm_class_datasets(1);
  test_sdtm_class_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_datasets_MAIN
#endif // sdtm_class_datasets_TEST
