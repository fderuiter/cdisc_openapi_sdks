#ifndef qrs_items_links_TEST
#define qrs_items_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_items_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_items_links.h"
qrs_items_links_t* instantiate_qrs_items_links(int include_optional);

#include "test_qrs_items_ref.c"
#include "test_qrs_product_ref.c"


qrs_items_links_t* instantiate_qrs_items_links(int include_optional) {
  qrs_items_links_t* qrs_items_links = NULL;
  if (include_optional) {
    qrs_items_links = qrs_items_links_create(
       // false, not to have infinite recursion
      instantiate_qrs_items_ref(0),
       // false, not to have infinite recursion
      instantiate_qrs_product_ref(0),
      list_createList()
    );
  } else {
    qrs_items_links = qrs_items_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return qrs_items_links;
}


#ifdef qrs_items_links_MAIN

void test_qrs_items_links(int include_optional) {
    qrs_items_links_t* qrs_items_links_1 = instantiate_qrs_items_links(include_optional);

	cJSON* jsonqrs_items_links_1 = qrs_items_links_convertToJSON(qrs_items_links_1);
	printf("qrs_items_links :\n%s\n", cJSON_Print(jsonqrs_items_links_1));
	qrs_items_links_t* qrs_items_links_2 = qrs_items_links_parseFromJSON(jsonqrs_items_links_1);
	cJSON* jsonqrs_items_links_2 = qrs_items_links_convertToJSON(qrs_items_links_2);
	printf("repeating qrs_items_links:\n%s\n", cJSON_Print(jsonqrs_items_links_2));
}

int main() {
  test_qrs_items_links(1);
  test_qrs_items_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_items_links_MAIN
#endif // qrs_items_links_TEST
