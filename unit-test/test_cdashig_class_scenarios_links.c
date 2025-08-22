#ifndef cdashig_class_scenarios_links_TEST
#define cdashig_class_scenarios_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_scenarios_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_scenarios_links.h"
cdashig_class_scenarios_links_t* instantiate_cdashig_class_scenarios_links(int include_optional);

#include "test_cdashig_class_scenarios_ref.c"


cdashig_class_scenarios_links_t* instantiate_cdashig_class_scenarios_links(int include_optional) {
  cdashig_class_scenarios_links_t* cdashig_class_scenarios_links = NULL;
  if (include_optional) {
    cdashig_class_scenarios_links = cdashig_class_scenarios_links_create(
       // false, not to have infinite recursion
      instantiate_cdashig_class_scenarios_ref(0),
      list_createList()
    );
  } else {
    cdashig_class_scenarios_links = cdashig_class_scenarios_links_create(
      NULL,
      list_createList()
    );
  }

  return cdashig_class_scenarios_links;
}


#ifdef cdashig_class_scenarios_links_MAIN

void test_cdashig_class_scenarios_links(int include_optional) {
    cdashig_class_scenarios_links_t* cdashig_class_scenarios_links_1 = instantiate_cdashig_class_scenarios_links(include_optional);

	cJSON* jsoncdashig_class_scenarios_links_1 = cdashig_class_scenarios_links_convertToJSON(cdashig_class_scenarios_links_1);
	printf("cdashig_class_scenarios_links :\n%s\n", cJSON_Print(jsoncdashig_class_scenarios_links_1));
	cdashig_class_scenarios_links_t* cdashig_class_scenarios_links_2 = cdashig_class_scenarios_links_parseFromJSON(jsoncdashig_class_scenarios_links_1);
	cJSON* jsoncdashig_class_scenarios_links_2 = cdashig_class_scenarios_links_convertToJSON(cdashig_class_scenarios_links_2);
	printf("repeating cdashig_class_scenarios_links:\n%s\n", cJSON_Print(jsoncdashig_class_scenarios_links_2));
}

int main() {
  test_cdashig_class_scenarios_links(1);
  test_cdashig_class_scenarios_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_scenarios_links_MAIN
#endif // cdashig_class_scenarios_links_TEST
