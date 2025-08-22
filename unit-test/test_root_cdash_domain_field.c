#ifndef root_cdash_domain_field_TEST
#define root_cdash_domain_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_cdash_domain_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_cdash_domain_field.h"
root_cdash_domain_field_t* instantiate_root_cdash_domain_field(int include_optional);

#include "test_root_cdash_domain_field_links.c"


root_cdash_domain_field_t* instantiate_root_cdash_domain_field(int include_optional) {
  root_cdash_domain_field_t* root_cdash_domain_field = NULL;
  if (include_optional) {
    root_cdash_domain_field = root_cdash_domain_field_create(
       // false, not to have infinite recursion
      instantiate_root_cdash_domain_field_links(0)
    );
  } else {
    root_cdash_domain_field = root_cdash_domain_field_create(
      NULL
    );
  }

  return root_cdash_domain_field;
}


#ifdef root_cdash_domain_field_MAIN

void test_root_cdash_domain_field(int include_optional) {
    root_cdash_domain_field_t* root_cdash_domain_field_1 = instantiate_root_cdash_domain_field(include_optional);

	cJSON* jsonroot_cdash_domain_field_1 = root_cdash_domain_field_convertToJSON(root_cdash_domain_field_1);
	printf("root_cdash_domain_field :\n%s\n", cJSON_Print(jsonroot_cdash_domain_field_1));
	root_cdash_domain_field_t* root_cdash_domain_field_2 = root_cdash_domain_field_parseFromJSON(jsonroot_cdash_domain_field_1);
	cJSON* jsonroot_cdash_domain_field_2 = root_cdash_domain_field_convertToJSON(root_cdash_domain_field_2);
	printf("repeating root_cdash_domain_field:\n%s\n", cJSON_Print(jsonroot_cdash_domain_field_2));
}

int main() {
  test_root_cdash_domain_field(1);
  test_root_cdash_domain_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_cdash_domain_field_MAIN
#endif // root_cdash_domain_field_TEST
