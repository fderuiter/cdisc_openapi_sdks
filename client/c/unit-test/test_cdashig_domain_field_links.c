#ifndef cdashig_domain_field_links_TEST
#define cdashig_domain_field_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_field_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain_field_links.h"
cdashig_domain_field_links_t* instantiate_cdashig_domain_field_links(int include_optional);

#include "test_cdashig_domain_field_ref.c"
#include "test_cdashig_product_ref.c"
#include "test_cdashig_domain_ref.c"
#include "test_root_cdashig_domain_field_ref.c"
#include "test_cdashig_domain_field_ref.c"


cdashig_domain_field_links_t* instantiate_cdashig_domain_field_links(int include_optional) {
  cdashig_domain_field_links_t* cdashig_domain_field_links = NULL;
  if (include_optional) {
    cdashig_domain_field_links = cdashig_domain_field_links_create(
       // false, not to have infinite recursion
      instantiate_cdashig_domain_field_ref(0),
      list_createList(),
       // false, not to have infinite recursion
      instantiate_cdashig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_domain_ref(0),
       // false, not to have infinite recursion
      instantiate_root_cdashig_domain_field_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_domain_field_ref(0),
      list_createList(),
      list_createList()
    );
  } else {
    cdashig_domain_field_links = cdashig_domain_field_links_create(
      NULL,
      list_createList(),
      NULL,
      NULL,
      NULL,
      NULL,
      list_createList(),
      list_createList()
    );
  }

  return cdashig_domain_field_links;
}


#ifdef cdashig_domain_field_links_MAIN

void test_cdashig_domain_field_links(int include_optional) {
    cdashig_domain_field_links_t* cdashig_domain_field_links_1 = instantiate_cdashig_domain_field_links(include_optional);

	cJSON* jsoncdashig_domain_field_links_1 = cdashig_domain_field_links_convertToJSON(cdashig_domain_field_links_1);
	printf("cdashig_domain_field_links :\n%s\n", cJSON_Print(jsoncdashig_domain_field_links_1));
	cdashig_domain_field_links_t* cdashig_domain_field_links_2 = cdashig_domain_field_links_parseFromJSON(jsoncdashig_domain_field_links_1);
	cJSON* jsoncdashig_domain_field_links_2 = cdashig_domain_field_links_convertToJSON(cdashig_domain_field_links_2);
	printf("repeating cdashig_domain_field_links:\n%s\n", cJSON_Print(jsoncdashig_domain_field_links_2));
}

int main() {
  test_cdashig_domain_field_links(1);
  test_cdashig_domain_field_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_field_links_MAIN
#endif // cdashig_domain_field_links_TEST
