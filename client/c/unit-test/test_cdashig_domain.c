#ifndef cdashig_domain_TEST
#define cdashig_domain_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_domain_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_domain.h"
cdashig_domain_t* instantiate_cdashig_domain(int include_optional);

#include "test_cdashig_domain_links.c"


cdashig_domain_t* instantiate_cdashig_domain(int include_optional) {
  cdashig_domain_t* cdashig_domain = NULL;
  if (include_optional) {
    cdashig_domain = cdashig_domain_create(
      "31",
      "VS",
      "Vital Signs",
       // false, not to have infinite recursion
      instantiate_cdashig_domain_links(0),
      list_createList()
    );
  } else {
    cdashig_domain = cdashig_domain_create(
      "31",
      "VS",
      "Vital Signs",
      NULL,
      list_createList()
    );
  }

  return cdashig_domain;
}


#ifdef cdashig_domain_MAIN

void test_cdashig_domain(int include_optional) {
    cdashig_domain_t* cdashig_domain_1 = instantiate_cdashig_domain(include_optional);

	cJSON* jsoncdashig_domain_1 = cdashig_domain_convertToJSON(cdashig_domain_1);
	printf("cdashig_domain :\n%s\n", cJSON_Print(jsoncdashig_domain_1));
	cdashig_domain_t* cdashig_domain_2 = cdashig_domain_parseFromJSON(jsoncdashig_domain_1);
	cJSON* jsoncdashig_domain_2 = cdashig_domain_convertToJSON(cdashig_domain_2);
	printf("repeating cdashig_domain:\n%s\n", cJSON_Print(jsoncdashig_domain_2));
}

int main() {
  test_cdashig_domain(1);
  test_cdashig_domain(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_domain_MAIN
#endif // cdashig_domain_TEST
