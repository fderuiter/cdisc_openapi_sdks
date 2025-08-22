#ifndef ct_term_links_TEST
#define ct_term_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_term_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_term_links.h"
ct_term_links_t* instantiate_ct_term_links(int include_optional);

#include "test_ct_term_ref.c"
#include "test_ct_package_ref.c"
#include "test_ct_codelist_ref.c"
#include "test_root_ct_term_ref.c"
#include "test_ct_term_ref.c"


ct_term_links_t* instantiate_ct_term_links(int include_optional) {
  ct_term_links_t* ct_term_links = NULL;
  if (include_optional) {
    ct_term_links = ct_term_links_create(
       // false, not to have infinite recursion
      instantiate_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_package_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_codelist_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_term_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_term_ref(0)
    );
  } else {
    ct_term_links = ct_term_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return ct_term_links;
}


#ifdef ct_term_links_MAIN

void test_ct_term_links(int include_optional) {
    ct_term_links_t* ct_term_links_1 = instantiate_ct_term_links(include_optional);

	cJSON* jsonct_term_links_1 = ct_term_links_convertToJSON(ct_term_links_1);
	printf("ct_term_links :\n%s\n", cJSON_Print(jsonct_term_links_1));
	ct_term_links_t* ct_term_links_2 = ct_term_links_parseFromJSON(jsonct_term_links_1);
	cJSON* jsonct_term_links_2 = ct_term_links_convertToJSON(ct_term_links_2);
	printf("repeating ct_term_links:\n%s\n", cJSON_Print(jsonct_term_links_2));
}

int main() {
  test_ct_term_links(1);
  test_ct_term_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_term_links_MAIN
#endif // ct_term_links_TEST
