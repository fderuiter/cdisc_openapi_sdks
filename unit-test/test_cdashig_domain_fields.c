#ifndef cdashig_domain_fields_TEST
#define cdashig_domain_fields_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_fields_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain_fields.h"
cdashig_domain_fields_t* instantiate_cdashig_domain_fields(int include_optional);

#include "test_cdashig_domain_fields_links.c"


cdashig_domain_fields_t* instantiate_cdashig_domain_fields(int include_optional) {
  cdashig_domain_fields_t* cdashig_domain_fields = NULL;
  if (include_optional) {
    cdashig_domain_fields = cdashig_domain_fields_create(
      "31",
      "VS",
      "Vital Signs",
       // false, not to have infinite recursion
      instantiate_cdashig_domain_fields_links(0)
    );
  } else {
    cdashig_domain_fields = cdashig_domain_fields_create(
      "31",
      "VS",
      "Vital Signs",
      NULL
    );
  }

  return cdashig_domain_fields;
}


#ifdef cdashig_domain_fields_MAIN

void test_cdashig_domain_fields(int include_optional) {
    cdashig_domain_fields_t* cdashig_domain_fields_1 = instantiate_cdashig_domain_fields(include_optional);

	cJSON* jsoncdashig_domain_fields_1 = cdashig_domain_fields_convertToJSON(cdashig_domain_fields_1);
	printf("cdashig_domain_fields :\n%s\n", cJSON_Print(jsoncdashig_domain_fields_1));
	cdashig_domain_fields_t* cdashig_domain_fields_2 = cdashig_domain_fields_parseFromJSON(jsoncdashig_domain_fields_1);
	cJSON* jsoncdashig_domain_fields_2 = cdashig_domain_fields_convertToJSON(cdashig_domain_fields_2);
	printf("repeating cdashig_domain_fields:\n%s\n", cJSON_Print(jsoncdashig_domain_fields_2));
}

int main() {
  test_cdashig_domain_fields(1);
  test_cdashig_domain_fields(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_fields_MAIN
#endif // cdashig_domain_fields_TEST
