#ifndef root_cdash_domain_field_links_TEST
#define root_cdash_domain_field_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_cdash_domain_field_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_cdash_domain_field_links.h"
root_cdash_domain_field_links_t* instantiate_root_cdash_domain_field_links(int include_optional);

#include "test_root_cdash_domain_field_ref.c"


root_cdash_domain_field_links_t* instantiate_root_cdash_domain_field_links(int include_optional) {
  root_cdash_domain_field_links_t* root_cdash_domain_field_links = NULL;
  if (include_optional) {
    root_cdash_domain_field_links = root_cdash_domain_field_links_create(
       // false, not to have infinite recursion
      instantiate_root_cdash_domain_field_ref(0),
      list_createList()
    );
  } else {
    root_cdash_domain_field_links = root_cdash_domain_field_links_create(
      NULL,
      list_createList()
    );
  }

  return root_cdash_domain_field_links;
}


#ifdef root_cdash_domain_field_links_MAIN

void test_root_cdash_domain_field_links(int include_optional) {
    root_cdash_domain_field_links_t* root_cdash_domain_field_links_1 = instantiate_root_cdash_domain_field_links(include_optional);

	cJSON* jsonroot_cdash_domain_field_links_1 = root_cdash_domain_field_links_convertToJSON(root_cdash_domain_field_links_1);
	printf("root_cdash_domain_field_links :\n%s\n", cJSON_Print(jsonroot_cdash_domain_field_links_1));
	root_cdash_domain_field_links_t* root_cdash_domain_field_links_2 = root_cdash_domain_field_links_parseFromJSON(jsonroot_cdash_domain_field_links_1);
	cJSON* jsonroot_cdash_domain_field_links_2 = root_cdash_domain_field_links_convertToJSON(root_cdash_domain_field_links_2);
	printf("repeating root_cdash_domain_field_links:\n%s\n", cJSON_Print(jsonroot_cdash_domain_field_links_2));
}

int main() {
  test_root_cdash_domain_field_links(1);
  test_root_cdash_domain_field_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_cdash_domain_field_links_MAIN
#endif // root_cdash_domain_field_links_TEST
