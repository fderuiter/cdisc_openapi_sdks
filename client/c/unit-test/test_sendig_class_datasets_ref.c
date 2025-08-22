#ifndef sendig_class_datasets_ref_TEST
#define sendig_class_datasets_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_class_datasets_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_class_datasets_ref.h"
sendig_class_datasets_ref_t* instantiate_sendig_class_datasets_ref(int include_optional);



sendig_class_datasets_ref_t* instantiate_sendig_class_datasets_ref(int include_optional) {
  sendig_class_datasets_ref_t* sendig_class_datasets_ref = NULL;
  if (include_optional) {
    sendig_class_datasets_ref = sendig_class_datasets_ref_create(
      "/mdr/sendig/3-1/classes/Findings/datasets",
      "Findings Observation Class",
      "SENDIG Class Dataset List"
    );
  } else {
    sendig_class_datasets_ref = sendig_class_datasets_ref_create(
      "/mdr/sendig/3-1/classes/Findings/datasets",
      "Findings Observation Class",
      "SENDIG Class Dataset List"
    );
  }

  return sendig_class_datasets_ref;
}


#ifdef sendig_class_datasets_ref_MAIN

void test_sendig_class_datasets_ref(int include_optional) {
    sendig_class_datasets_ref_t* sendig_class_datasets_ref_1 = instantiate_sendig_class_datasets_ref(include_optional);

	cJSON* jsonsendig_class_datasets_ref_1 = sendig_class_datasets_ref_convertToJSON(sendig_class_datasets_ref_1);
	printf("sendig_class_datasets_ref :\n%s\n", cJSON_Print(jsonsendig_class_datasets_ref_1));
	sendig_class_datasets_ref_t* sendig_class_datasets_ref_2 = sendig_class_datasets_ref_parseFromJSON(jsonsendig_class_datasets_ref_1);
	cJSON* jsonsendig_class_datasets_ref_2 = sendig_class_datasets_ref_convertToJSON(sendig_class_datasets_ref_2);
	printf("repeating sendig_class_datasets_ref:\n%s\n", cJSON_Print(jsonsendig_class_datasets_ref_2));
}

int main() {
  test_sendig_class_datasets_ref(1);
  test_sendig_class_datasets_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_class_datasets_ref_MAIN
#endif // sendig_class_datasets_ref_TEST
