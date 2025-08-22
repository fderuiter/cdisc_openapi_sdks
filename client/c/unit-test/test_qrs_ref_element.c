#ifndef qrs_ref_element_TEST
#define qrs_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_ref_element.h"
qrs_ref_element_t* instantiate_qrs_ref_element(int include_optional);



qrs_ref_element_t* instantiate_qrs_ref_element(int include_optional) {
  qrs_ref_element_t* qrs_ref_element = NULL;
  if (include_optional) {
    qrs_ref_element = qrs_ref_element_create(
      "/mdr/qrs/AIMS1/1-0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "QRS Measure"
    );
  } else {
    qrs_ref_element = qrs_ref_element_create(
      "/mdr/qrs/AIMS1/1-0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "QRS Measure"
    );
  }

  return qrs_ref_element;
}


#ifdef qrs_ref_element_MAIN

void test_qrs_ref_element(int include_optional) {
    qrs_ref_element_t* qrs_ref_element_1 = instantiate_qrs_ref_element(include_optional);

	cJSON* jsonqrs_ref_element_1 = qrs_ref_element_convertToJSON(qrs_ref_element_1);
	printf("qrs_ref_element :\n%s\n", cJSON_Print(jsonqrs_ref_element_1));
	qrs_ref_element_t* qrs_ref_element_2 = qrs_ref_element_parseFromJSON(jsonqrs_ref_element_1);
	cJSON* jsonqrs_ref_element_2 = qrs_ref_element_convertToJSON(qrs_ref_element_2);
	printf("repeating qrs_ref_element:\n%s\n", cJSON_Print(jsonqrs_ref_element_2));
}

int main() {
  test_qrs_ref_element(1);
  test_qrs_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_ref_element_MAIN
#endif // qrs_ref_element_TEST
