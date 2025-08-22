#ifndef qrs_responsegroup_links_TEST
#define qrs_responsegroup_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responsegroup_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responsegroup_links.h"
qrs_responsegroup_links_t* instantiate_qrs_responsegroup_links(int include_optional);

#include "test_qrs_responsegroup_ref.c"


qrs_responsegroup_links_t* instantiate_qrs_responsegroup_links(int include_optional) {
  qrs_responsegroup_links_t* qrs_responsegroup_links = NULL;
  if (include_optional) {
    qrs_responsegroup_links = qrs_responsegroup_links_create(
       // false, not to have infinite recursion
      instantiate_qrs_responsegroup_ref(0),
      list_createList()
    );
  } else {
    qrs_responsegroup_links = qrs_responsegroup_links_create(
      NULL,
      list_createList()
    );
  }

  return qrs_responsegroup_links;
}


#ifdef qrs_responsegroup_links_MAIN

void test_qrs_responsegroup_links(int include_optional) {
    qrs_responsegroup_links_t* qrs_responsegroup_links_1 = instantiate_qrs_responsegroup_links(include_optional);

	cJSON* jsonqrs_responsegroup_links_1 = qrs_responsegroup_links_convertToJSON(qrs_responsegroup_links_1);
	printf("qrs_responsegroup_links :\n%s\n", cJSON_Print(jsonqrs_responsegroup_links_1));
	qrs_responsegroup_links_t* qrs_responsegroup_links_2 = qrs_responsegroup_links_parseFromJSON(jsonqrs_responsegroup_links_1);
	cJSON* jsonqrs_responsegroup_links_2 = qrs_responsegroup_links_convertToJSON(qrs_responsegroup_links_2);
	printf("repeating qrs_responsegroup_links:\n%s\n", cJSON_Print(jsonqrs_responsegroup_links_2));
}

int main() {
  test_qrs_responsegroup_links(1);
  test_qrs_responsegroup_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responsegroup_links_MAIN
#endif // qrs_responsegroup_links_TEST
