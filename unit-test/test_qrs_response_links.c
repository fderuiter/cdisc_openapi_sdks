#ifndef qrs_response_links_TEST
#define qrs_response_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_response_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_response_links.h"
qrs_response_links_t* instantiate_qrs_response_links(int include_optional);

#include "test_root_ct_term_ref.c"
#include "test_root_ct_term_ref.c"
#include "test_root_ct_term_ref.c"
#include "test_root_ct_term_ref.c"


qrs_response_links_t* instantiate_qrs_response_links(int include_optional) {
  qrs_response_links_t* qrs_response_links = NULL;
  if (include_optional) {
    qrs_response_links = qrs_response_links_create(
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0)
    );
  } else {
    qrs_response_links = qrs_response_links_create(
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return qrs_response_links;
}


#ifdef qrs_response_links_MAIN

void test_qrs_response_links(int include_optional) {
    qrs_response_links_t* qrs_response_links_1 = instantiate_qrs_response_links(include_optional);

	cJSON* jsonqrs_response_links_1 = qrs_response_links_convertToJSON(qrs_response_links_1);
	printf("qrs_response_links :\n%s\n", cJSON_Print(jsonqrs_response_links_1));
	qrs_response_links_t* qrs_response_links_2 = qrs_response_links_parseFromJSON(jsonqrs_response_links_1);
	cJSON* jsonqrs_response_links_2 = qrs_response_links_convertToJSON(qrs_response_links_2);
	printf("repeating qrs_response_links:\n%s\n", cJSON_Print(jsonqrs_response_links_2));
}

int main() {
  test_qrs_response_links(1);
  test_qrs_response_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_response_links_MAIN
#endif // qrs_response_links_TEST
