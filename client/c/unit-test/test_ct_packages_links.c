#ifndef ct_packages_links_TEST
#define ct_packages_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_packages_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_packages_links.h"
ct_packages_links_t* instantiate_ct_packages_links(int include_optional);

#include "test_ct_packages_ref.c"


ct_packages_links_t* instantiate_ct_packages_links(int include_optional) {
  ct_packages_links_t* ct_packages_links = NULL;
  if (include_optional) {
    ct_packages_links = ct_packages_links_create(
       // false, not to have infinite recursion
      instantiate_ct_packages_ref(0),
      list_createList()
    );
  } else {
    ct_packages_links = ct_packages_links_create(
      NULL,
      list_createList()
    );
  }

  return ct_packages_links;
}


#ifdef ct_packages_links_MAIN

void test_ct_packages_links(int include_optional) {
    ct_packages_links_t* ct_packages_links_1 = instantiate_ct_packages_links(include_optional);

	cJSON* jsonct_packages_links_1 = ct_packages_links_convertToJSON(ct_packages_links_1);
	printf("ct_packages_links :\n%s\n", cJSON_Print(jsonct_packages_links_1));
	ct_packages_links_t* ct_packages_links_2 = ct_packages_links_parseFromJSON(jsonct_packages_links_1);
	cJSON* jsonct_packages_links_2 = ct_packages_links_convertToJSON(ct_packages_links_2);
	printf("repeating ct_packages_links:\n%s\n", cJSON_Print(jsonct_packages_links_2));
}

int main() {
  test_ct_packages_links(1);
  test_ct_packages_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_packages_links_MAIN
#endif // ct_packages_links_TEST
