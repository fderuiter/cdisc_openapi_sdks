#ifndef cdash_domain_field_ref_version_TEST
#define cdash_domain_field_ref_version_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_field_ref_version_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain_field_ref_version.h"
cdash_domain_field_ref_version_t* instantiate_cdash_domain_field_ref_version(int include_optional);



cdash_domain_field_ref_version_t* instantiate_cdash_domain_field_ref_version(int include_optional) {
  cdash_domain_field_ref_version_t* cdash_domain_field_ref_version = NULL;
  if (include_optional) {
    cdash_domain_field_ref_version = cdash_domain_field_ref_version_create(
      "/mdr/cdash/1-0/domains/DM/fields/AGE",
      "Age",
      "Data Collection Field"
    );
  } else {
    cdash_domain_field_ref_version = cdash_domain_field_ref_version_create(
      "/mdr/cdash/1-0/domains/DM/fields/AGE",
      "Age",
      "Data Collection Field"
    );
  }

  return cdash_domain_field_ref_version;
}


#ifdef cdash_domain_field_ref_version_MAIN

void test_cdash_domain_field_ref_version(int include_optional) {
    cdash_domain_field_ref_version_t* cdash_domain_field_ref_version_1 = instantiate_cdash_domain_field_ref_version(include_optional);

	cJSON* jsoncdash_domain_field_ref_version_1 = cdash_domain_field_ref_version_convertToJSON(cdash_domain_field_ref_version_1);
	printf("cdash_domain_field_ref_version :\n%s\n", cJSON_Print(jsoncdash_domain_field_ref_version_1));
	cdash_domain_field_ref_version_t* cdash_domain_field_ref_version_2 = cdash_domain_field_ref_version_parseFromJSON(jsoncdash_domain_field_ref_version_1);
	cJSON* jsoncdash_domain_field_ref_version_2 = cdash_domain_field_ref_version_convertToJSON(cdash_domain_field_ref_version_2);
	printf("repeating cdash_domain_field_ref_version:\n%s\n", cJSON_Print(jsoncdash_domain_field_ref_version_2));
}

int main() {
  test_cdash_domain_field_ref_version(1);
  test_cdash_domain_field_ref_version(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_field_ref_version_MAIN
#endif // cdash_domain_field_ref_version_TEST
