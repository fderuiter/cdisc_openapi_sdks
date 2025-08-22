#ifndef cdash_domain_TEST
#define cdash_domain_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_domain_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_domain.h"
cdash_domain_t* instantiate_cdash_domain(int include_optional);

#include "test_cdash_domain_links.c"


cdash_domain_t* instantiate_cdash_domain(int include_optional) {
  cdash_domain_t* cdash_domain = NULL;
  if (include_optional) {
    cdash_domain = cdash_domain_create(
      "4",
      "DM",
      "Demographics",
       // false, not to have infinite recursion
      instantiate_cdash_domain_links(0),
      list_createList()
    );
  } else {
    cdash_domain = cdash_domain_create(
      "4",
      "DM",
      "Demographics",
      NULL,
      list_createList()
    );
  }

  return cdash_domain;
}


#ifdef cdash_domain_MAIN

void test_cdash_domain(int include_optional) {
    cdash_domain_t* cdash_domain_1 = instantiate_cdash_domain(include_optional);

	cJSON* jsoncdash_domain_1 = cdash_domain_convertToJSON(cdash_domain_1);
	printf("cdash_domain :\n%s\n", cJSON_Print(jsoncdash_domain_1));
	cdash_domain_t* cdash_domain_2 = cdash_domain_parseFromJSON(jsoncdash_domain_1);
	cJSON* jsoncdash_domain_2 = cdash_domain_convertToJSON(cdash_domain_2);
	printf("repeating cdash_domain:\n%s\n", cJSON_Print(jsoncdash_domain_2));
}

int main() {
  test_cdash_domain(1);
  test_cdash_domain(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_domain_MAIN
#endif // cdash_domain_TEST
