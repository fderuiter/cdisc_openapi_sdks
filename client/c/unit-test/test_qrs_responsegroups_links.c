#ifndef qrs_responsegroups_links_TEST
#define qrs_responsegroups_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responsegroups_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responsegroups_links.h"
qrs_responsegroups_links_t* instantiate_qrs_responsegroups_links(int include_optional);

#include "test_qrs_responsegroups_ref.c"


qrs_responsegroups_links_t* instantiate_qrs_responsegroups_links(int include_optional) {
  qrs_responsegroups_links_t* qrs_responsegroups_links = NULL;
  if (include_optional) {
    qrs_responsegroups_links = qrs_responsegroups_links_create(
       // false, not to have infinite recursion
      instantiate_qrs_responsegroups_ref(0),
      list_createList()
    );
  } else {
    qrs_responsegroups_links = qrs_responsegroups_links_create(
      NULL,
      list_createList()
    );
  }

  return qrs_responsegroups_links;
}


#ifdef qrs_responsegroups_links_MAIN

void test_qrs_responsegroups_links(int include_optional) {
    qrs_responsegroups_links_t* qrs_responsegroups_links_1 = instantiate_qrs_responsegroups_links(include_optional);

	cJSON* jsonqrs_responsegroups_links_1 = qrs_responsegroups_links_convertToJSON(qrs_responsegroups_links_1);
	printf("qrs_responsegroups_links :\n%s\n", cJSON_Print(jsonqrs_responsegroups_links_1));
	qrs_responsegroups_links_t* qrs_responsegroups_links_2 = qrs_responsegroups_links_parseFromJSON(jsonqrs_responsegroups_links_1);
	cJSON* jsonqrs_responsegroups_links_2 = qrs_responsegroups_links_convertToJSON(qrs_responsegroups_links_2);
	printf("repeating qrs_responsegroups_links:\n%s\n", cJSON_Print(jsonqrs_responsegroups_links_2));
}

int main() {
  test_qrs_responsegroups_links(1);
  test_qrs_responsegroups_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responsegroups_links_MAIN
#endif // qrs_responsegroups_links_TEST
