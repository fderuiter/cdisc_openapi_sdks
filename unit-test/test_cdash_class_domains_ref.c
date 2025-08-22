#ifndef cdash_class_domains_ref_TEST
#define cdash_class_domains_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_domains_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_domains_ref.h"
cdash_class_domains_ref_t* instantiate_cdash_class_domains_ref(int include_optional);



cdash_class_domains_ref_t* instantiate_cdash_class_domains_ref(int include_optional) {
  cdash_class_domains_ref_t* cdash_class_domains_ref = NULL;
  if (include_optional) {
    cdash_class_domains_ref = cdash_class_domains_ref_create(
      "/mdr/cdash/1-1/classes/SpecialPurpose/domains",
      "Special-Purpose",
      "CDASH Class Domain List"
    );
  } else {
    cdash_class_domains_ref = cdash_class_domains_ref_create(
      "/mdr/cdash/1-1/classes/SpecialPurpose/domains",
      "Special-Purpose",
      "CDASH Class Domain List"
    );
  }

  return cdash_class_domains_ref;
}


#ifdef cdash_class_domains_ref_MAIN

void test_cdash_class_domains_ref(int include_optional) {
    cdash_class_domains_ref_t* cdash_class_domains_ref_1 = instantiate_cdash_class_domains_ref(include_optional);

	cJSON* jsoncdash_class_domains_ref_1 = cdash_class_domains_ref_convertToJSON(cdash_class_domains_ref_1);
	printf("cdash_class_domains_ref :\n%s\n", cJSON_Print(jsoncdash_class_domains_ref_1));
	cdash_class_domains_ref_t* cdash_class_domains_ref_2 = cdash_class_domains_ref_parseFromJSON(jsoncdash_class_domains_ref_1);
	cJSON* jsoncdash_class_domains_ref_2 = cdash_class_domains_ref_convertToJSON(cdash_class_domains_ref_2);
	printf("repeating cdash_class_domains_ref:\n%s\n", cJSON_Print(jsoncdash_class_domains_ref_2));
}

int main() {
  test_cdash_class_domains_ref(1);
  test_cdash_class_domains_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_domains_ref_MAIN
#endif // cdash_class_domains_ref_TEST
