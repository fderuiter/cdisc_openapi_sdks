#ifndef cdash_domain_fields_TEST
#define cdash_domain_fields_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_fields_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain_fields.h"
cdash_domain_fields_t* instantiate_cdash_domain_fields(int include_optional);

#include "test_cdash_domain_fields_links.c"


cdash_domain_fields_t* instantiate_cdash_domain_fields(int include_optional) {
  cdash_domain_fields_t* cdash_domain_fields = NULL;
  if (include_optional) {
    cdash_domain_fields = cdash_domain_fields_create(
      "4",
      "DM",
      "Demographics",
       // false, not to have infinite recursion
      instantiate_cdash_domain_fields_links(0)
    );
  } else {
    cdash_domain_fields = cdash_domain_fields_create(
      "4",
      "DM",
      "Demographics",
      NULL
    );
  }

  return cdash_domain_fields;
}


#ifdef cdash_domain_fields_MAIN

void test_cdash_domain_fields(int include_optional) {
    cdash_domain_fields_t* cdash_domain_fields_1 = instantiate_cdash_domain_fields(include_optional);

	cJSON* jsoncdash_domain_fields_1 = cdash_domain_fields_convertToJSON(cdash_domain_fields_1);
	printf("cdash_domain_fields :\n%s\n", cJSON_Print(jsoncdash_domain_fields_1));
	cdash_domain_fields_t* cdash_domain_fields_2 = cdash_domain_fields_parseFromJSON(jsoncdash_domain_fields_1);
	cJSON* jsoncdash_domain_fields_2 = cdash_domain_fields_convertToJSON(cdash_domain_fields_2);
	printf("repeating cdash_domain_fields:\n%s\n", cJSON_Print(jsoncdash_domain_fields_2));
}

int main() {
  test_cdash_domain_fields(1);
  test_cdash_domain_fields(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_fields_MAIN
#endif // cdash_domain_fields_TEST
