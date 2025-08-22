#ifndef sendig_dataset_TEST
#define sendig_dataset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_dataset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_dataset.h"
sendig_dataset_t* instantiate_sendig_dataset(int include_optional);

#include "test_sendig_dataset_links.c"


sendig_dataset_t* instantiate_sendig_dataset(int include_optional) {
  sendig_dataset_t* sendig_dataset = NULL;
  if (include_optional) {
    sendig_dataset = sendig_dataset_create(
      "20",
      "VS",
      "Vital Signs",
      "A findings domain that contains measurements including but not limited to blood pressure, temperature, respiration, body surface area, body mass index, height and weight. (Source: CDISC Controlled Terminology, SDOMAIN, C49622, 2018-06-29)",
      "One record per measurement per observation time per subject",
       // false, not to have infinite recursion
      instantiate_sendig_dataset_links(0),
      list_createList()
    );
  } else {
    sendig_dataset = sendig_dataset_create(
      "20",
      "VS",
      "Vital Signs",
      "A findings domain that contains measurements including but not limited to blood pressure, temperature, respiration, body surface area, body mass index, height and weight. (Source: CDISC Controlled Terminology, SDOMAIN, C49622, 2018-06-29)",
      "One record per measurement per observation time per subject",
      NULL,
      list_createList()
    );
  }

  return sendig_dataset;
}


#ifdef sendig_dataset_MAIN

void test_sendig_dataset(int include_optional) {
    sendig_dataset_t* sendig_dataset_1 = instantiate_sendig_dataset(include_optional);

	cJSON* jsonsendig_dataset_1 = sendig_dataset_convertToJSON(sendig_dataset_1);
	printf("sendig_dataset :\n%s\n", cJSON_Print(jsonsendig_dataset_1));
	sendig_dataset_t* sendig_dataset_2 = sendig_dataset_parseFromJSON(jsonsendig_dataset_1);
	cJSON* jsonsendig_dataset_2 = sendig_dataset_convertToJSON(sendig_dataset_2);
	printf("repeating sendig_dataset:\n%s\n", cJSON_Print(jsonsendig_dataset_2));
}

int main() {
  test_sendig_dataset(1);
  test_sendig_dataset(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_dataset_MAIN
#endif // sendig_dataset_TEST
