#ifndef cdash_domain_field_ref_TEST
#define cdash_domain_field_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_field_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain_field_ref.h"
cdash_domain_field_ref_t* instantiate_cdash_domain_field_ref(int include_optional);



cdash_domain_field_ref_t* instantiate_cdash_domain_field_ref(int include_optional) {
  cdash_domain_field_ref_t* cdash_domain_field_ref = NULL;
  if (include_optional) {
    cdash_domain_field_ref = cdash_domain_field_ref_create(
      "/mdr/cdash/1-1/domains/DM/fields/AGE",
      "Age",
      "Data Collection Field"
    );
  } else {
    cdash_domain_field_ref = cdash_domain_field_ref_create(
      "/mdr/cdash/1-1/domains/DM/fields/AGE",
      "Age",
      "Data Collection Field"
    );
  }

  return cdash_domain_field_ref;
}


#ifdef cdash_domain_field_ref_MAIN

void test_cdash_domain_field_ref(int include_optional) {
    cdash_domain_field_ref_t* cdash_domain_field_ref_1 = instantiate_cdash_domain_field_ref(include_optional);

	cJSON* jsoncdash_domain_field_ref_1 = cdash_domain_field_ref_convertToJSON(cdash_domain_field_ref_1);
	printf("cdash_domain_field_ref :\n%s\n", cJSON_Print(jsoncdash_domain_field_ref_1));
	cdash_domain_field_ref_t* cdash_domain_field_ref_2 = cdash_domain_field_ref_parseFromJSON(jsoncdash_domain_field_ref_1);
	cJSON* jsoncdash_domain_field_ref_2 = cdash_domain_field_ref_convertToJSON(cdash_domain_field_ref_2);
	printf("repeating cdash_domain_field_ref:\n%s\n", cJSON_Print(jsoncdash_domain_field_ref_2));
}

int main() {
  test_cdash_domain_field_ref(1);
  test_cdash_domain_field_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_field_ref_MAIN
#endif // cdash_domain_field_ref_TEST
