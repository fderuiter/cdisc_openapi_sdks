#ifndef cdash_domain_field_ref_element_TEST
#define cdash_domain_field_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_field_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain_field_ref_element.h"
cdash_domain_field_ref_element_t* instantiate_cdash_domain_field_ref_element(int include_optional);



cdash_domain_field_ref_element_t* instantiate_cdash_domain_field_ref_element(int include_optional) {
  cdash_domain_field_ref_element_t* cdash_domain_field_ref_element = NULL;
  if (include_optional) {
    cdash_domain_field_ref_element = cdash_domain_field_ref_element_create(
      "/mdr/cdash/1-1/domains/DM/fields/AGE",
      "Age",
      "Data Collection Field"
    );
  } else {
    cdash_domain_field_ref_element = cdash_domain_field_ref_element_create(
      "/mdr/cdash/1-1/domains/DM/fields/AGE",
      "Age",
      "Data Collection Field"
    );
  }

  return cdash_domain_field_ref_element;
}


#ifdef cdash_domain_field_ref_element_MAIN

void test_cdash_domain_field_ref_element(int include_optional) {
    cdash_domain_field_ref_element_t* cdash_domain_field_ref_element_1 = instantiate_cdash_domain_field_ref_element(include_optional);

	cJSON* jsoncdash_domain_field_ref_element_1 = cdash_domain_field_ref_element_convertToJSON(cdash_domain_field_ref_element_1);
	printf("cdash_domain_field_ref_element :\n%s\n", cJSON_Print(jsoncdash_domain_field_ref_element_1));
	cdash_domain_field_ref_element_t* cdash_domain_field_ref_element_2 = cdash_domain_field_ref_element_parseFromJSON(jsoncdash_domain_field_ref_element_1);
	cJSON* jsoncdash_domain_field_ref_element_2 = cdash_domain_field_ref_element_convertToJSON(cdash_domain_field_ref_element_2);
	printf("repeating cdash_domain_field_ref_element:\n%s\n", cJSON_Print(jsoncdash_domain_field_ref_element_2));
}

int main() {
  test_cdash_domain_field_ref_element(1);
  test_cdash_domain_field_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_field_ref_element_MAIN
#endif // cdash_domain_field_ref_element_TEST
