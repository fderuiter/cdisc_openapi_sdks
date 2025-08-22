#ifndef qrs_items_ref_TEST
#define qrs_items_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_items_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_items_ref.h"
qrs_items_ref_t* instantiate_qrs_items_ref(int include_optional);



qrs_items_ref_t* instantiate_qrs_items_ref(int include_optional) {
  qrs_items_ref_t* qrs_items_ref = NULL;
  if (include_optional) {
    qrs_items_ref = qrs_items_ref_create(
      "/mdr/qrs/AIMS01/1-0/items/AIMS01.001",
      "AIMS01-Muscles of Facial Expression",
      "QRS Item List"
    );
  } else {
    qrs_items_ref = qrs_items_ref_create(
      "/mdr/qrs/AIMS01/1-0/items/AIMS01.001",
      "AIMS01-Muscles of Facial Expression",
      "QRS Item List"
    );
  }

  return qrs_items_ref;
}


#ifdef qrs_items_ref_MAIN

void test_qrs_items_ref(int include_optional) {
    qrs_items_ref_t* qrs_items_ref_1 = instantiate_qrs_items_ref(include_optional);

	cJSON* jsonqrs_items_ref_1 = qrs_items_ref_convertToJSON(qrs_items_ref_1);
	printf("qrs_items_ref :\n%s\n", cJSON_Print(jsonqrs_items_ref_1));
	qrs_items_ref_t* qrs_items_ref_2 = qrs_items_ref_parseFromJSON(jsonqrs_items_ref_1);
	cJSON* jsonqrs_items_ref_2 = qrs_items_ref_convertToJSON(qrs_items_ref_2);
	printf("repeating qrs_items_ref:\n%s\n", cJSON_Print(jsonqrs_items_ref_2));
}

int main() {
  test_qrs_items_ref(1);
  test_qrs_items_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_items_ref_MAIN
#endif // qrs_items_ref_TEST
