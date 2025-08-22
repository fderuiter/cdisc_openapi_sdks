#ifndef qrs_items_TEST
#define qrs_items_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_items_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_items.h"
qrs_items_t* instantiate_qrs_items(int include_optional);

#include "test_qrs_items_links.c"


qrs_items_t* instantiate_qrs_items(int include_optional) {
  qrs_items_t* qrs_items = NULL;
  if (include_optional) {
    qrs_items = qrs_items_create(
      "AIMS v1.0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).",
      "2013-05-22",
      "2030-12-31",
      "Final",
      "1-0",
      "Questionnaire",
       // false, not to have infinite recursion
      instantiate_qrs_items_links(0)
    );
  } else {
    qrs_items = qrs_items_create(
      "AIMS v1.0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).",
      "2013-05-22",
      "2030-12-31",
      "Final",
      "1-0",
      "Questionnaire",
      NULL
    );
  }

  return qrs_items;
}


#ifdef qrs_items_MAIN

void test_qrs_items(int include_optional) {
    qrs_items_t* qrs_items_1 = instantiate_qrs_items(include_optional);

	cJSON* jsonqrs_items_1 = qrs_items_convertToJSON(qrs_items_1);
	printf("qrs_items :\n%s\n", cJSON_Print(jsonqrs_items_1));
	qrs_items_t* qrs_items_2 = qrs_items_parseFromJSON(jsonqrs_items_1);
	cJSON* jsonqrs_items_2 = qrs_items_convertToJSON(qrs_items_2);
	printf("repeating qrs_items:\n%s\n", cJSON_Print(jsonqrs_items_2));
}

int main() {
  test_qrs_items(1);
  test_qrs_items(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_items_MAIN
#endif // qrs_items_TEST
