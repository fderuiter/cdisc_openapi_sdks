#ifndef qrs_item_ref_element_TEST
#define qrs_item_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_item_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_item_ref_element.h"
qrs_item_ref_element_t* instantiate_qrs_item_ref_element(int include_optional);



qrs_item_ref_element_t* instantiate_qrs_item_ref_element(int include_optional) {
  qrs_item_ref_element_t* qrs_item_ref_element = NULL;
  if (include_optional) {
    qrs_item_ref_element = qrs_item_ref_element_create(
      "/mdr/qrs/AIMS01/1-0/items/AIMS01.001",
      "AIMS01-Muscles of Facial Expression",
      "QRS Measure Item"
    );
  } else {
    qrs_item_ref_element = qrs_item_ref_element_create(
      "/mdr/qrs/AIMS01/1-0/items/AIMS01.001",
      "AIMS01-Muscles of Facial Expression",
      "QRS Measure Item"
    );
  }

  return qrs_item_ref_element;
}


#ifdef qrs_item_ref_element_MAIN

void test_qrs_item_ref_element(int include_optional) {
    qrs_item_ref_element_t* qrs_item_ref_element_1 = instantiate_qrs_item_ref_element(include_optional);

	cJSON* jsonqrs_item_ref_element_1 = qrs_item_ref_element_convertToJSON(qrs_item_ref_element_1);
	printf("qrs_item_ref_element :\n%s\n", cJSON_Print(jsonqrs_item_ref_element_1));
	qrs_item_ref_element_t* qrs_item_ref_element_2 = qrs_item_ref_element_parseFromJSON(jsonqrs_item_ref_element_1);
	cJSON* jsonqrs_item_ref_element_2 = qrs_item_ref_element_convertToJSON(qrs_item_ref_element_2);
	printf("repeating qrs_item_ref_element:\n%s\n", cJSON_Print(jsonqrs_item_ref_element_2));
}

int main() {
  test_qrs_item_ref_element(1);
  test_qrs_item_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_item_ref_element_MAIN
#endif // qrs_item_ref_element_TEST
