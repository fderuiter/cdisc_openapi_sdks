#ifndef ct_codelist_terms_links_TEST
#define ct_codelist_terms_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_codelist_terms_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_codelist_terms_links.h"
ct_codelist_terms_links_t* instantiate_ct_codelist_terms_links(int include_optional);

#include "test_ct_codelist_terms_ref.c"
#include "test_ct_package_ref.c"
#include "test_root_ct_codelist_ref.c"
#include "test_ct_codelist_terms_ref.c"


ct_codelist_terms_links_t* instantiate_ct_codelist_terms_links(int include_optional) {
  ct_codelist_terms_links_t* ct_codelist_terms_links = NULL;
  if (include_optional) {
    ct_codelist_terms_links = ct_codelist_terms_links_create(
       // false, not to have infinite recursion
      instantiate_ct_codelist_terms_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_package_ref(0),
       // false, not to have infinite recursion
      instantiate_root_ct_codelist_ref(0),
       // false, not to have infinite recursion
      instantiate_ct_codelist_terms_ref(0),
      list_createList()
    );
  } else {
    ct_codelist_terms_links = ct_codelist_terms_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      list_createList()
    );
  }

  return ct_codelist_terms_links;
}


#ifdef ct_codelist_terms_links_MAIN

void test_ct_codelist_terms_links(int include_optional) {
    ct_codelist_terms_links_t* ct_codelist_terms_links_1 = instantiate_ct_codelist_terms_links(include_optional);

	cJSON* jsonct_codelist_terms_links_1 = ct_codelist_terms_links_convertToJSON(ct_codelist_terms_links_1);
	printf("ct_codelist_terms_links :\n%s\n", cJSON_Print(jsonct_codelist_terms_links_1));
	ct_codelist_terms_links_t* ct_codelist_terms_links_2 = ct_codelist_terms_links_parseFromJSON(jsonct_codelist_terms_links_1);
	cJSON* jsonct_codelist_terms_links_2 = ct_codelist_terms_links_convertToJSON(ct_codelist_terms_links_2);
	printf("repeating ct_codelist_terms_links:\n%s\n", cJSON_Print(jsonct_codelist_terms_links_2));
}

int main() {
  test_ct_codelist_terms_links(1);
  test_ct_codelist_terms_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_codelist_terms_links_MAIN
#endif // ct_codelist_terms_links_TEST
