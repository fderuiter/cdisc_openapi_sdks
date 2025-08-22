#ifndef cdash_domain_field_links_TEST
#define cdash_domain_field_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_field_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain_field_links.h"
cdash_domain_field_links_t* instantiate_cdash_domain_field_links(int include_optional);

#include "test_cdash_domain_field_ref.c"
#include "test_cdash_product_ref.c"
#include "test_cdash_class_ref.c"
#include "test_cdash_domain_ref.c"
#include "test_root_cdash_domain_field_ref.c"
#include "test_cdash_domain_field_ref.c"


cdash_domain_field_links_t* instantiate_cdash_domain_field_links(int include_optional) {
  cdash_domain_field_links_t* cdash_domain_field_links = NULL;
  if (include_optional) {
    cdash_domain_field_links = cdash_domain_field_links_create(
       // false, not to have infinite recursion
      instantiate_cdash_domain_field_ref(0),
      list_createList(),
       // false, not to have infinite recursion
      instantiate_cdash_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_class_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_domain_ref(0),
       // false, not to have infinite recursion
      instantiate_root_cdash_domain_field_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_domain_field_ref(0),
      list_createList(),
      list_createList()
    );
  } else {
    cdash_domain_field_links = cdash_domain_field_links_create(
      NULL,
      list_createList(),
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      list_createList(),
      list_createList()
    );
  }

  return cdash_domain_field_links;
}


#ifdef cdash_domain_field_links_MAIN

void test_cdash_domain_field_links(int include_optional) {
    cdash_domain_field_links_t* cdash_domain_field_links_1 = instantiate_cdash_domain_field_links(include_optional);

	cJSON* jsoncdash_domain_field_links_1 = cdash_domain_field_links_convertToJSON(cdash_domain_field_links_1);
	printf("cdash_domain_field_links :\n%s\n", cJSON_Print(jsoncdash_domain_field_links_1));
	cdash_domain_field_links_t* cdash_domain_field_links_2 = cdash_domain_field_links_parseFromJSON(jsoncdash_domain_field_links_1);
	cJSON* jsoncdash_domain_field_links_2 = cdash_domain_field_links_convertToJSON(cdash_domain_field_links_2);
	printf("repeating cdash_domain_field_links:\n%s\n", cJSON_Print(jsoncdash_domain_field_links_2));
}

int main() {
  test_cdash_domain_field_links(1);
  test_cdash_domain_field_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_field_links_MAIN
#endif // cdash_domain_field_links_TEST
