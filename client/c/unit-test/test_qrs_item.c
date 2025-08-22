#ifndef qrs_item_TEST
#define qrs_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_item.h"
qrs_item_t* instantiate_qrs_item(int include_optional);

#include "test_qrs_item_links.c"


qrs_item_t* instantiate_qrs_item(int include_optional) {
  qrs_item_t* qrs_item = NULL;
  if (include_optional) {
    qrs_item = qrs_item_create(
      "1",
      "AIMS01-Muscles of Facial Expression",
      "Abnormal Involuntary Movement Scale - Facial and Oral Movements, Muscles of facial expression, e.g., movements of forehead, eyebrows, periorbital area, cheeks. Include frowning, blinking, grimacing of upper face.",
       // false, not to have infinite recursion
      instantiate_qrs_item_links(0)
    );
  } else {
    qrs_item = qrs_item_create(
      "1",
      "AIMS01-Muscles of Facial Expression",
      "Abnormal Involuntary Movement Scale - Facial and Oral Movements, Muscles of facial expression, e.g., movements of forehead, eyebrows, periorbital area, cheeks. Include frowning, blinking, grimacing of upper face.",
      NULL
    );
  }

  return qrs_item;
}


#ifdef qrs_item_MAIN

void test_qrs_item(int include_optional) {
    qrs_item_t* qrs_item_1 = instantiate_qrs_item(include_optional);

	cJSON* jsonqrs_item_1 = qrs_item_convertToJSON(qrs_item_1);
	printf("qrs_item :\n%s\n", cJSON_Print(jsonqrs_item_1));
	qrs_item_t* qrs_item_2 = qrs_item_parseFromJSON(jsonqrs_item_1);
	cJSON* jsonqrs_item_2 = qrs_item_convertToJSON(qrs_item_2);
	printf("repeating qrs_item:\n%s\n", cJSON_Print(jsonqrs_item_2));
}

int main() {
  test_qrs_item(1);
  test_qrs_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_item_MAIN
#endif // qrs_item_TEST
