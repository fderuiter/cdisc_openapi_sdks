#ifndef root_ct_term_TEST
#define root_ct_term_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_ct_term_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_ct_term.h"
root_ct_term_t* instantiate_root_ct_term(int include_optional);

#include "test_root_ct_term_links.c"


root_ct_term_t* instantiate_root_ct_term(int include_optional) {
  root_ct_term_t* root_ct_term = NULL;
  if (include_optional) {
    root_ct_term = root_ct_term_create(
       // false, not to have infinite recursion
      instantiate_root_ct_term_links(0)
    );
  } else {
    root_ct_term = root_ct_term_create(
      NULL
    );
  }

  return root_ct_term;
}


#ifdef root_ct_term_MAIN

void test_root_ct_term(int include_optional) {
    root_ct_term_t* root_ct_term_1 = instantiate_root_ct_term(include_optional);

	cJSON* jsonroot_ct_term_1 = root_ct_term_convertToJSON(root_ct_term_1);
	printf("root_ct_term :\n%s\n", cJSON_Print(jsonroot_ct_term_1));
	root_ct_term_t* root_ct_term_2 = root_ct_term_parseFromJSON(jsonroot_ct_term_1);
	cJSON* jsonroot_ct_term_2 = root_ct_term_convertToJSON(root_ct_term_2);
	printf("repeating root_ct_term:\n%s\n", cJSON_Print(jsonroot_ct_term_2));
}

int main() {
  test_root_ct_term(1);
  test_root_ct_term(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_ct_term_MAIN
#endif // root_ct_term_TEST
