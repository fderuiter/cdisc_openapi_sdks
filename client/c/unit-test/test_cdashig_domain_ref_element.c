#ifndef cdashig_domain_ref_element_TEST
#define cdashig_domain_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain_ref_element.h"
cdashig_domain_ref_element_t* instantiate_cdashig_domain_ref_element(int include_optional);



cdashig_domain_ref_element_t* instantiate_cdashig_domain_ref_element(int include_optional) {
  cdashig_domain_ref_element_t* cdashig_domain_ref_element = NULL;
  if (include_optional) {
    cdashig_domain_ref_element = cdashig_domain_ref_element_create(
      "/mdr/cdashig/2-1/domains/VS",
      "Vital Signs",
      "CDASH Domain"
    );
  } else {
    cdashig_domain_ref_element = cdashig_domain_ref_element_create(
      "/mdr/cdashig/2-1/domains/VS",
      "Vital Signs",
      "CDASH Domain"
    );
  }

  return cdashig_domain_ref_element;
}


#ifdef cdashig_domain_ref_element_MAIN

void test_cdashig_domain_ref_element(int include_optional) {
    cdashig_domain_ref_element_t* cdashig_domain_ref_element_1 = instantiate_cdashig_domain_ref_element(include_optional);

	cJSON* jsoncdashig_domain_ref_element_1 = cdashig_domain_ref_element_convertToJSON(cdashig_domain_ref_element_1);
	printf("cdashig_domain_ref_element :\n%s\n", cJSON_Print(jsoncdashig_domain_ref_element_1));
	cdashig_domain_ref_element_t* cdashig_domain_ref_element_2 = cdashig_domain_ref_element_parseFromJSON(jsoncdashig_domain_ref_element_1);
	cJSON* jsoncdashig_domain_ref_element_2 = cdashig_domain_ref_element_convertToJSON(cdashig_domain_ref_element_2);
	printf("repeating cdashig_domain_ref_element:\n%s\n", cJSON_Print(jsoncdashig_domain_ref_element_2));
}

int main() {
  test_cdashig_domain_ref_element(1);
  test_cdashig_domain_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_ref_element_MAIN
#endif // cdashig_domain_ref_element_TEST
