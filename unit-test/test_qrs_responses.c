#ifndef qrs_responses_TEST
#define qrs_responses_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responses_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responses.h"
qrs_responses_t* instantiate_qrs_responses(int include_optional);

#include "test_qrs_response_links.c"


qrs_responses_t* instantiate_qrs_responses(int include_optional) {
  qrs_responses_t* qrs_responses = NULL;
  if (include_optional) {
    qrs_responses = qrs_responses_create(
      "1",
       // false, not to have infinite recursion
      instantiate_qrs_response_links(0)
    );
  } else {
    qrs_responses = qrs_responses_create(
      "1",
      NULL
    );
  }

  return qrs_responses;
}


#ifdef qrs_responses_MAIN

void test_qrs_responses(int include_optional) {
    qrs_responses_t* qrs_responses_1 = instantiate_qrs_responses(include_optional);

	cJSON* jsonqrs_responses_1 = qrs_responses_convertToJSON(qrs_responses_1);
	printf("qrs_responses :\n%s\n", cJSON_Print(jsonqrs_responses_1));
	qrs_responses_t* qrs_responses_2 = qrs_responses_parseFromJSON(jsonqrs_responses_1);
	cJSON* jsonqrs_responses_2 = qrs_responses_convertToJSON(qrs_responses_2);
	printf("repeating qrs_responses:\n%s\n", cJSON_Print(jsonqrs_responses_2));
}

int main() {
  test_qrs_responses(1);
  test_qrs_responses(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responses_MAIN
#endif // qrs_responses_TEST
