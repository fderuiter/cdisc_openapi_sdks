#ifndef ct_package_codelists_links_TEST
#define ct_package_codelists_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_codelists_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package_codelists_links.h"
ct_package_codelists_links_t* instantiate_ct_package_codelists_links(int include_optional);

#include "test_ct_package_codelists_ref.c"
#include "test_ct_package_codelists_ref.c"


ct_package_codelists_links_t* instantiate_ct_package_codelists_links(int include_optional) {
  ct_package_codelists_links_t* ct_package_codelists_links = NULL;
  if (include_optional) {
    ct_package_codelists_links = ct_package_codelists_links_create(
       // false, not to have infinite recursion
      instantiate_ct_package_codelists_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_package_codelists_ref(0),
      list_createList()
    );
  } else {
    ct_package_codelists_links = ct_package_codelists_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return ct_package_codelists_links;
}


#ifdef ct_package_codelists_links_MAIN

void test_ct_package_codelists_links(int include_optional) {
    ct_package_codelists_links_t* ct_package_codelists_links_1 = instantiate_ct_package_codelists_links(include_optional);

	cJSON* jsonct_package_codelists_links_1 = ct_package_codelists_links_convertToJSON(ct_package_codelists_links_1);
	printf("ct_package_codelists_links :\n%s\n", cJSON_Print(jsonct_package_codelists_links_1));
	ct_package_codelists_links_t* ct_package_codelists_links_2 = ct_package_codelists_links_parseFromJSON(jsonct_package_codelists_links_1);
	cJSON* jsonct_package_codelists_links_2 = ct_package_codelists_links_convertToJSON(ct_package_codelists_links_2);
	printf("repeating ct_package_codelists_links:\n%s\n", cJSON_Print(jsonct_package_codelists_links_2));
}

int main() {
  test_ct_package_codelists_links(1);
  test_ct_package_codelists_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_codelists_links_MAIN
#endif // ct_package_codelists_links_TEST
