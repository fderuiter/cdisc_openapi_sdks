#ifndef cdashig_domain_fields_ref_TEST
#define cdashig_domain_fields_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_fields_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain_fields_ref.h"
cdashig_domain_fields_ref_t* instantiate_cdashig_domain_fields_ref(int include_optional);



cdashig_domain_fields_ref_t* instantiate_cdashig_domain_fields_ref(int include_optional) {
  cdashig_domain_fields_ref_t* cdashig_domain_fields_ref = NULL;
  if (include_optional) {
    cdashig_domain_fields_ref = cdashig_domain_fields_ref_create(
      "/mdr/cdashig/2-1/domains/VS/fields",
      "Vital Signs",
      "CDASHIG Domain Field List"
    );
  } else {
    cdashig_domain_fields_ref = cdashig_domain_fields_ref_create(
      "/mdr/cdashig/2-1/domains/VS/fields",
      "Vital Signs",
      "CDASHIG Domain Field List"
    );
  }

  return cdashig_domain_fields_ref;
}


#ifdef cdashig_domain_fields_ref_MAIN

void test_cdashig_domain_fields_ref(int include_optional) {
    cdashig_domain_fields_ref_t* cdashig_domain_fields_ref_1 = instantiate_cdashig_domain_fields_ref(include_optional);

	cJSON* jsoncdashig_domain_fields_ref_1 = cdashig_domain_fields_ref_convertToJSON(cdashig_domain_fields_ref_1);
	printf("cdashig_domain_fields_ref :\n%s\n", cJSON_Print(jsoncdashig_domain_fields_ref_1));
	cdashig_domain_fields_ref_t* cdashig_domain_fields_ref_2 = cdashig_domain_fields_ref_parseFromJSON(jsoncdashig_domain_fields_ref_1);
	cJSON* jsoncdashig_domain_fields_ref_2 = cdashig_domain_fields_ref_convertToJSON(cdashig_domain_fields_ref_2);
	printf("repeating cdashig_domain_fields_ref:\n%s\n", cJSON_Print(jsoncdashig_domain_fields_ref_2));
}

int main() {
  test_cdashig_domain_fields_ref(1);
  test_cdashig_domain_fields_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_fields_ref_MAIN
#endif // cdashig_domain_fields_ref_TEST
