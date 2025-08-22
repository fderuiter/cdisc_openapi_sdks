#ifndef sendig_dataset_variables_ref_TEST
#define sendig_dataset_variables_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_dataset_variables_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_dataset_variables_ref.h"
sendig_dataset_variables_ref_t* instantiate_sendig_dataset_variables_ref(int include_optional);



sendig_dataset_variables_ref_t* instantiate_sendig_dataset_variables_ref(int include_optional) {
  sendig_dataset_variables_ref_t* sendig_dataset_variables_ref = NULL;
  if (include_optional) {
    sendig_dataset_variables_ref = sendig_dataset_variables_ref_create(
      "/mdr/sendig/3-1/datasets/VS/variables",
      "Vital Signs",
      "SENDIG Dataset Variable List"
    );
  } else {
    sendig_dataset_variables_ref = sendig_dataset_variables_ref_create(
      "/mdr/sendig/3-1/datasets/VS/variables",
      "Vital Signs",
      "SENDIG Dataset Variable List"
    );
  }

  return sendig_dataset_variables_ref;
}


#ifdef sendig_dataset_variables_ref_MAIN

void test_sendig_dataset_variables_ref(int include_optional) {
    sendig_dataset_variables_ref_t* sendig_dataset_variables_ref_1 = instantiate_sendig_dataset_variables_ref(include_optional);

	cJSON* jsonsendig_dataset_variables_ref_1 = sendig_dataset_variables_ref_convertToJSON(sendig_dataset_variables_ref_1);
	printf("sendig_dataset_variables_ref :\n%s\n", cJSON_Print(jsonsendig_dataset_variables_ref_1));
	sendig_dataset_variables_ref_t* sendig_dataset_variables_ref_2 = sendig_dataset_variables_ref_parseFromJSON(jsonsendig_dataset_variables_ref_1);
	cJSON* jsonsendig_dataset_variables_ref_2 = sendig_dataset_variables_ref_convertToJSON(sendig_dataset_variables_ref_2);
	printf("repeating sendig_dataset_variables_ref:\n%s\n", cJSON_Print(jsonsendig_dataset_variables_ref_2));
}

int main() {
  test_sendig_dataset_variables_ref(1);
  test_sendig_dataset_variables_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_dataset_variables_ref_MAIN
#endif // sendig_dataset_variables_ref_TEST
