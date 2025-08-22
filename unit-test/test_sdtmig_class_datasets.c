#ifndef sdtmig_class_datasets_TEST
#define sdtmig_class_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_class_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_class_datasets.h"
sdtmig_class_datasets_t* instantiate_sdtmig_class_datasets(int include_optional);

#include "test_sdtmig_class_datasets_links.c"


sdtmig_class_datasets_t* instantiate_sdtmig_class_datasets(int include_optional) {
  sdtmig_class_datasets_t* sdtmig_class_datasets = NULL;
  if (include_optional) {
    sdtmig_class_datasets = sdtmig_class_datasets_create(
      "5",
      "Findings",
      "Findings Observation Class",
      "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)",
       // false, not to have infinite recursion
      instantiate_sdtmig_class_datasets_links(0)
    );
  } else {
    sdtmig_class_datasets = sdtmig_class_datasets_create(
      "5",
      "Findings",
      "Findings Observation Class",
      "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)",
      NULL
    );
  }

  return sdtmig_class_datasets;
}


#ifdef sdtmig_class_datasets_MAIN

void test_sdtmig_class_datasets(int include_optional) {
    sdtmig_class_datasets_t* sdtmig_class_datasets_1 = instantiate_sdtmig_class_datasets(include_optional);

	cJSON* jsonsdtmig_class_datasets_1 = sdtmig_class_datasets_convertToJSON(sdtmig_class_datasets_1);
	printf("sdtmig_class_datasets :\n%s\n", cJSON_Print(jsonsdtmig_class_datasets_1));
	sdtmig_class_datasets_t* sdtmig_class_datasets_2 = sdtmig_class_datasets_parseFromJSON(jsonsdtmig_class_datasets_1);
	cJSON* jsonsdtmig_class_datasets_2 = sdtmig_class_datasets_convertToJSON(sdtmig_class_datasets_2);
	printf("repeating sdtmig_class_datasets:\n%s\n", cJSON_Print(jsonsdtmig_class_datasets_2));
}

int main() {
  test_sdtmig_class_datasets(1);
  test_sdtmig_class_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_class_datasets_MAIN
#endif // sdtmig_class_datasets_TEST
