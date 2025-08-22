#ifndef sendig_classes_ref_TEST
#define sendig_classes_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_classes_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_classes_ref.h"
sendig_classes_ref_t* instantiate_sendig_classes_ref(int include_optional);



sendig_classes_ref_t* instantiate_sendig_classes_ref(int include_optional) {
  sendig_classes_ref_t* sendig_classes_ref = NULL;
  if (include_optional) {
    sendig_classes_ref = sendig_classes_ref_create(
      "/mdr/sendig/3-1/classes",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "SENDIG Class List"
    );
  } else {
    sendig_classes_ref = sendig_classes_ref_create(
      "/mdr/sendig/3-1/classes",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "SENDIG Class List"
    );
  }

  return sendig_classes_ref;
}


#ifdef sendig_classes_ref_MAIN

void test_sendig_classes_ref(int include_optional) {
    sendig_classes_ref_t* sendig_classes_ref_1 = instantiate_sendig_classes_ref(include_optional);

	cJSON* jsonsendig_classes_ref_1 = sendig_classes_ref_convertToJSON(sendig_classes_ref_1);
	printf("sendig_classes_ref :\n%s\n", cJSON_Print(jsonsendig_classes_ref_1));
	sendig_classes_ref_t* sendig_classes_ref_2 = sendig_classes_ref_parseFromJSON(jsonsendig_classes_ref_1);
	cJSON* jsonsendig_classes_ref_2 = sendig_classes_ref_convertToJSON(sendig_classes_ref_2);
	printf("repeating sendig_classes_ref:\n%s\n", cJSON_Print(jsonsendig_classes_ref_2));
}

int main() {
  test_sendig_classes_ref(1);
  test_sendig_classes_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_classes_ref_MAIN
#endif // sendig_classes_ref_TEST
