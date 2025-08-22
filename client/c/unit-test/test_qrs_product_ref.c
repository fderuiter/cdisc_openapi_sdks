#ifndef qrs_product_ref_TEST
#define qrs_product_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_product_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_product_ref.h"
qrs_product_ref_t* instantiate_qrs_product_ref(int include_optional);



qrs_product_ref_t* instantiate_qrs_product_ref(int include_optional) {
  qrs_product_ref_t* qrs_product_ref = NULL;
  if (include_optional) {
    qrs_product_ref = qrs_product_ref_create(
      "/mdr/qrs/AIMS01/1-0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "QRS Measure"
    );
  } else {
    qrs_product_ref = qrs_product_ref_create(
      "/mdr/qrs/AIMS01/1-0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "QRS Measure"
    );
  }

  return qrs_product_ref;
}


#ifdef qrs_product_ref_MAIN

void test_qrs_product_ref(int include_optional) {
    qrs_product_ref_t* qrs_product_ref_1 = instantiate_qrs_product_ref(include_optional);

	cJSON* jsonqrs_product_ref_1 = qrs_product_ref_convertToJSON(qrs_product_ref_1);
	printf("qrs_product_ref :\n%s\n", cJSON_Print(jsonqrs_product_ref_1));
	qrs_product_ref_t* qrs_product_ref_2 = qrs_product_ref_parseFromJSON(jsonqrs_product_ref_1);
	cJSON* jsonqrs_product_ref_2 = qrs_product_ref_convertToJSON(qrs_product_ref_2);
	printf("repeating qrs_product_ref:\n%s\n", cJSON_Print(jsonqrs_product_ref_2));
}

int main() {
  test_qrs_product_ref(1);
  test_qrs_product_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_product_ref_MAIN
#endif // qrs_product_ref_TEST
