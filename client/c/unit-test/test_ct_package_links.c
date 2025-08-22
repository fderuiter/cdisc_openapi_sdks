#ifndef ct_package_links_TEST
#define ct_package_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package_links.h"
ct_package_links_t* instantiate_ct_package_links(int include_optional);

#include "test_ct_package_ref.c"
#include "test_ct_package_ref.c"


ct_package_links_t* instantiate_ct_package_links(int include_optional) {
  ct_package_links_t* ct_package_links = NULL;
  if (include_optional) {
    ct_package_links = ct_package_links_create(
       // false, not to have infinite recursion
      instantiate_ct_package_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_package_ref(0)
    );
  } else {
    ct_package_links = ct_package_links_create(
      NULL,
      NULL
    );
  }

  return ct_package_links;
}


#ifdef ct_package_links_MAIN

void test_ct_package_links(int include_optional) {
    ct_package_links_t* ct_package_links_1 = instantiate_ct_package_links(include_optional);

	cJSON* jsonct_package_links_1 = ct_package_links_convertToJSON(ct_package_links_1);
	printf("ct_package_links :\n%s\n", cJSON_Print(jsonct_package_links_1));
	ct_package_links_t* ct_package_links_2 = ct_package_links_parseFromJSON(jsonct_package_links_1);
	cJSON* jsonct_package_links_2 = ct_package_links_convertToJSON(ct_package_links_2);
	printf("repeating ct_package_links:\n%s\n", cJSON_Print(jsonct_package_links_2));
}

int main() {
  test_ct_package_links(1);
  test_ct_package_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_links_MAIN
#endif // ct_package_links_TEST
