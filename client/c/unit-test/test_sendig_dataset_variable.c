#ifndef sendig_dataset_variable_TEST
#define sendig_dataset_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_dataset_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_dataset_variable.h"
sendig_dataset_variable_t* instantiate_sendig_dataset_variable(int include_optional);

#include "test_sendig_dataset_variable_links.c"


sendig_dataset_variable_t* instantiate_sendig_dataset_variable(int include_optional) {
  sendig_dataset_variable_t* sendig_dataset_variable = NULL;
  if (include_optional) {
    sendig_dataset_variable = sendig_dataset_variable_create(
      "8",
      "VSTEST",
      "Vital Signs Test Name",
      "Long name for VSTESTCD. The value in VSTEST cannot be longer than 40 characters.",
      "Synonym Qualifier",
      "Char",
      "Req",
      "Value domain example",
      ["Value example 1","Value example 2"],
       // false, not to have infinite recursion
      instantiate_sendig_dataset_variable_links(0)
    );
  } else {
    sendig_dataset_variable = sendig_dataset_variable_create(
      "8",
      "VSTEST",
      "Vital Signs Test Name",
      "Long name for VSTESTCD. The value in VSTEST cannot be longer than 40 characters.",
      "Synonym Qualifier",
      "Char",
      "Req",
      "Value domain example",
      ["Value example 1","Value example 2"],
      NULL
    );
  }

  return sendig_dataset_variable;
}


#ifdef sendig_dataset_variable_MAIN

void test_sendig_dataset_variable(int include_optional) {
    sendig_dataset_variable_t* sendig_dataset_variable_1 = instantiate_sendig_dataset_variable(include_optional);

	cJSON* jsonsendig_dataset_variable_1 = sendig_dataset_variable_convertToJSON(sendig_dataset_variable_1);
	printf("sendig_dataset_variable :\n%s\n", cJSON_Print(jsonsendig_dataset_variable_1));
	sendig_dataset_variable_t* sendig_dataset_variable_2 = sendig_dataset_variable_parseFromJSON(jsonsendig_dataset_variable_1);
	cJSON* jsonsendig_dataset_variable_2 = sendig_dataset_variable_convertToJSON(sendig_dataset_variable_2);
	printf("repeating sendig_dataset_variable:\n%s\n", cJSON_Print(jsonsendig_dataset_variable_2));
}

int main() {
  test_sendig_dataset_variable(1);
  test_sendig_dataset_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_dataset_variable_MAIN
#endif // sendig_dataset_variable_TEST
