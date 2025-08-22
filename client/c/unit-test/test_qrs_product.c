#ifndef qrs_product_TEST
#define qrs_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_product.h"
qrs_product_t* instantiate_qrs_product(int include_optional);

#include "test_qrs_product_links.c"


qrs_product_t* instantiate_qrs_product(int include_optional) {
  qrs_product_t* qrs_product = NULL;
  if (include_optional) {
    qrs_product = qrs_product_create(
      "AIMS v1.0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).",
      "2013-05-22",
      "2030-12-31",
      "Final",
      "1-0",
      "Questionnaire",
       // false, not to have infinite recursion
      instantiate_qrs_product_links(0),
      list_createList()
    );
  } else {
    qrs_product = qrs_product_create(
      "AIMS v1.0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).",
      "2013-05-22",
      "2030-12-31",
      "Final",
      "1-0",
      "Questionnaire",
      NULL,
      list_createList()
    );
  }

  return qrs_product;
}


#ifdef qrs_product_MAIN

void test_qrs_product(int include_optional) {
    qrs_product_t* qrs_product_1 = instantiate_qrs_product(include_optional);

	cJSON* jsonqrs_product_1 = qrs_product_convertToJSON(qrs_product_1);
	printf("qrs_product :\n%s\n", cJSON_Print(jsonqrs_product_1));
	qrs_product_t* qrs_product_2 = qrs_product_parseFromJSON(jsonqrs_product_1);
	cJSON* jsonqrs_product_2 = qrs_product_convertToJSON(qrs_product_2);
	printf("repeating qrs_product:\n%s\n", cJSON_Print(jsonqrs_product_2));
}

int main() {
  test_qrs_product(1);
  test_qrs_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_product_MAIN
#endif // qrs_product_TEST
