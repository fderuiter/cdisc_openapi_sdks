#ifndef qrs_item_links_TEST
#define qrs_item_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_item_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_item_links.h"
qrs_item_links_t* instantiate_qrs_item_links(int include_optional);

#include "test_root_ct_term_ref.c"
#include "test_root_ct_term_ref.c"
#include "test_root_ct_term_ref.c"
#include "test_root_ct_term_ref.c"
#include "test_qrs_responsegroup.c"


qrs_item_links_t* instantiate_qrs_item_links(int include_optional) {
  qrs_item_links_t* qrs_item_links = NULL;
  if (include_optional) {
    qrs_item_links = qrs_item_links_create(
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_qrs_responsegroup(0)
    );
  } else {
    qrs_item_links = qrs_item_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return qrs_item_links;
}


#ifdef qrs_item_links_MAIN

void test_qrs_item_links(int include_optional) {
    qrs_item_links_t* qrs_item_links_1 = instantiate_qrs_item_links(include_optional);

	cJSON* jsonqrs_item_links_1 = qrs_item_links_convertToJSON(qrs_item_links_1);
	printf("qrs_item_links :\n%s\n", cJSON_Print(jsonqrs_item_links_1));
	qrs_item_links_t* qrs_item_links_2 = qrs_item_links_parseFromJSON(jsonqrs_item_links_1);
	cJSON* jsonqrs_item_links_2 = qrs_item_links_convertToJSON(qrs_item_links_2);
	printf("repeating qrs_item_links:\n%s\n", cJSON_Print(jsonqrs_item_links_2));
}

int main() {
  test_qrs_item_links(1);
  test_qrs_item_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_item_links_MAIN
#endif // qrs_item_links_TEST
