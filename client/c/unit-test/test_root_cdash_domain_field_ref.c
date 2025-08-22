#ifndef root_cdash_domain_field_ref_TEST
#define root_cdash_domain_field_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_cdash_domain_field_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_cdash_domain_field_ref.h"
root_cdash_domain_field_ref_t* instantiate_root_cdash_domain_field_ref(int include_optional);



root_cdash_domain_field_ref_t* instantiate_root_cdash_domain_field_ref(int include_optional) {
  root_cdash_domain_field_ref_t* root_cdash_domain_field_ref = NULL;
  if (include_optional) {
    root_cdash_domain_field_ref = root_cdash_domain_field_ref_create(
      "/mdr/root/cdash/domains/DM/fields/AGE",
      "Version-agnostic anchor element for field DM.AGE",
      "Has Root Data Element"
    );
  } else {
    root_cdash_domain_field_ref = root_cdash_domain_field_ref_create(
      "/mdr/root/cdash/domains/DM/fields/AGE",
      "Version-agnostic anchor element for field DM.AGE",
      "Has Root Data Element"
    );
  }

  return root_cdash_domain_field_ref;
}


#ifdef root_cdash_domain_field_ref_MAIN

void test_root_cdash_domain_field_ref(int include_optional) {
    root_cdash_domain_field_ref_t* root_cdash_domain_field_ref_1 = instantiate_root_cdash_domain_field_ref(include_optional);

	cJSON* jsonroot_cdash_domain_field_ref_1 = root_cdash_domain_field_ref_convertToJSON(root_cdash_domain_field_ref_1);
	printf("root_cdash_domain_field_ref :\n%s\n", cJSON_Print(jsonroot_cdash_domain_field_ref_1));
	root_cdash_domain_field_ref_t* root_cdash_domain_field_ref_2 = root_cdash_domain_field_ref_parseFromJSON(jsonroot_cdash_domain_field_ref_1);
	cJSON* jsonroot_cdash_domain_field_ref_2 = root_cdash_domain_field_ref_convertToJSON(root_cdash_domain_field_ref_2);
	printf("repeating root_cdash_domain_field_ref:\n%s\n", cJSON_Print(jsonroot_cdash_domain_field_ref_2));
}

int main() {
  test_root_cdash_domain_field_ref(1);
  test_root_cdash_domain_field_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_cdash_domain_field_ref_MAIN
#endif // root_cdash_domain_field_ref_TEST
