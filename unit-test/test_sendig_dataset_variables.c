#ifndef sendig_dataset_variables_TEST
#define sendig_dataset_variables_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_dataset_variables_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_dataset_variables.h"
sendig_dataset_variables_t* instantiate_sendig_dataset_variables(int include_optional);

#include "test_sendig_dataset_variables_links.c"


sendig_dataset_variables_t* instantiate_sendig_dataset_variables(int include_optional) {
  sendig_dataset_variables_t* sendig_dataset_variables = NULL;
  if (include_optional) {
    sendig_dataset_variables = sendig_dataset_variables_create(
      "20",
      "VS",
      "Vital Signs",
      "A findings domain that contains measurements including but not limited to blood pressure, temperature, respiration, body surface area, body mass index, height and weight. (Source: CDISC Controlled Terminology, SDOMAIN, C49622, 2018-06-29)",
      "One record per measurement per observation time per subject",
       // false, not to have infinite recursion
      instantiate_sendig_dataset_variables_links(0)
    );
  } else {
    sendig_dataset_variables = sendig_dataset_variables_create(
      "20",
      "VS",
      "Vital Signs",
      "A findings domain that contains measurements including but not limited to blood pressure, temperature, respiration, body surface area, body mass index, height and weight. (Source: CDISC Controlled Terminology, SDOMAIN, C49622, 2018-06-29)",
      "One record per measurement per observation time per subject",
      NULL
    );
  }

  return sendig_dataset_variables;
}


#ifdef sendig_dataset_variables_MAIN

void test_sendig_dataset_variables(int include_optional) {
    sendig_dataset_variables_t* sendig_dataset_variables_1 = instantiate_sendig_dataset_variables(include_optional);

	cJSON* jsonsendig_dataset_variables_1 = sendig_dataset_variables_convertToJSON(sendig_dataset_variables_1);
	printf("sendig_dataset_variables :\n%s\n", cJSON_Print(jsonsendig_dataset_variables_1));
	sendig_dataset_variables_t* sendig_dataset_variables_2 = sendig_dataset_variables_parseFromJSON(jsonsendig_dataset_variables_1);
	cJSON* jsonsendig_dataset_variables_2 = sendig_dataset_variables_convertToJSON(sendig_dataset_variables_2);
	printf("repeating sendig_dataset_variables:\n%s\n", cJSON_Print(jsonsendig_dataset_variables_2));
}

int main() {
  test_sendig_dataset_variables(1);
  test_sendig_dataset_variables(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_dataset_variables_MAIN
#endif // sendig_dataset_variables_TEST
