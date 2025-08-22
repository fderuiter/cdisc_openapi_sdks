#ifndef root_ct_codelist_TEST
#define root_ct_codelist_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_ct_codelist_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_ct_codelist.h"
root_ct_codelist_t* instantiate_root_ct_codelist(int include_optional);

#include "test_root_ct_codelist_links.c"


root_ct_codelist_t* instantiate_root_ct_codelist(int include_optional) {
  root_ct_codelist_t* root_ct_codelist = NULL;
  if (include_optional) {
    root_ct_codelist = root_ct_codelist_create(
       // false, not to have infinite recursion
      instantiate_root_ct_codelist_links(0)
    );
  } else {
    root_ct_codelist = root_ct_codelist_create(
      NULL
    );
  }

  return root_ct_codelist;
}


#ifdef root_ct_codelist_MAIN

void test_root_ct_codelist(int include_optional) {
    root_ct_codelist_t* root_ct_codelist_1 = instantiate_root_ct_codelist(include_optional);

	cJSON* jsonroot_ct_codelist_1 = root_ct_codelist_convertToJSON(root_ct_codelist_1);
	printf("root_ct_codelist :\n%s\n", cJSON_Print(jsonroot_ct_codelist_1));
	root_ct_codelist_t* root_ct_codelist_2 = root_ct_codelist_parseFromJSON(jsonroot_ct_codelist_1);
	cJSON* jsonroot_ct_codelist_2 = root_ct_codelist_convertToJSON(root_ct_codelist_2);
	printf("repeating root_ct_codelist:\n%s\n", cJSON_Print(jsonroot_ct_codelist_2));
}

int main() {
  test_root_ct_codelist(1);
  test_root_ct_codelist(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_ct_codelist_MAIN
#endif // root_ct_codelist_TEST
