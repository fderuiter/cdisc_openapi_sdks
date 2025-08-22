#ifndef root_ct_term_links_TEST
#define root_ct_term_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_ct_term_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_ct_term_links.h"
root_ct_term_links_t* instantiate_root_ct_term_links(int include_optional);

#include "test_root_ct_term_ref.c"


root_ct_term_links_t* instantiate_root_ct_term_links(int include_optional) {
  root_ct_term_links_t* root_ct_term_links = NULL;
  if (include_optional) {
    root_ct_term_links = root_ct_term_links_create(
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
      list_createList()
    );
  } else {
    root_ct_term_links = root_ct_term_links_create(
      NULL,
      list_createList()
    );
  }

  return root_ct_term_links;
}


#ifdef root_ct_term_links_MAIN

void test_root_ct_term_links(int include_optional) {
    root_ct_term_links_t* root_ct_term_links_1 = instantiate_root_ct_term_links(include_optional);

	cJSON* jsonroot_ct_term_links_1 = root_ct_term_links_convertToJSON(root_ct_term_links_1);
	printf("root_ct_term_links :\n%s\n", cJSON_Print(jsonroot_ct_term_links_1));
	root_ct_term_links_t* root_ct_term_links_2 = root_ct_term_links_parseFromJSON(jsonroot_ct_term_links_1);
	cJSON* jsonroot_ct_term_links_2 = root_ct_term_links_convertToJSON(root_ct_term_links_2);
	printf("repeating root_ct_term_links:\n%s\n", cJSON_Print(jsonroot_ct_term_links_2));
}

int main() {
  test_root_ct_term_links(1);
  test_root_ct_term_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_ct_term_links_MAIN
#endif // root_ct_term_links_TEST
