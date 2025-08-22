#ifndef cdashig_domain_field_ref_version_TEST
#define cdashig_domain_field_ref_version_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_field_ref_version_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain_field_ref_version.h"
cdashig_domain_field_ref_version_t* instantiate_cdashig_domain_field_ref_version(int include_optional);



cdashig_domain_field_ref_version_t* instantiate_cdashig_domain_field_ref_version(int include_optional) {
  cdashig_domain_field_ref_version_t* cdashig_domain_field_ref_version = NULL;
  if (include_optional) {
    cdashig_domain_field_ref_version = cdashig_domain_field_ref_version_create(
      "/mdr/cdashig/2-1/domains/VS/fields/VSDAT",
      "Vital Signs Date",
      "Data Collection Field"
    );
  } else {
    cdashig_domain_field_ref_version = cdashig_domain_field_ref_version_create(
      "/mdr/cdashig/2-1/domains/VS/fields/VSDAT",
      "Vital Signs Date",
      "Data Collection Field"
    );
  }

  return cdashig_domain_field_ref_version;
}


#ifdef cdashig_domain_field_ref_version_MAIN

void test_cdashig_domain_field_ref_version(int include_optional) {
    cdashig_domain_field_ref_version_t* cdashig_domain_field_ref_version_1 = instantiate_cdashig_domain_field_ref_version(include_optional);

	cJSON* jsoncdashig_domain_field_ref_version_1 = cdashig_domain_field_ref_version_convertToJSON(cdashig_domain_field_ref_version_1);
	printf("cdashig_domain_field_ref_version :\n%s\n", cJSON_Print(jsoncdashig_domain_field_ref_version_1));
	cdashig_domain_field_ref_version_t* cdashig_domain_field_ref_version_2 = cdashig_domain_field_ref_version_parseFromJSON(jsoncdashig_domain_field_ref_version_1);
	cJSON* jsoncdashig_domain_field_ref_version_2 = cdashig_domain_field_ref_version_convertToJSON(cdashig_domain_field_ref_version_2);
	printf("repeating cdashig_domain_field_ref_version:\n%s\n", cJSON_Print(jsoncdashig_domain_field_ref_version_2));
}

int main() {
  test_cdashig_domain_field_ref_version(1);
  test_cdashig_domain_field_ref_version(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_field_ref_version_MAIN
#endif // cdashig_domain_field_ref_version_TEST
