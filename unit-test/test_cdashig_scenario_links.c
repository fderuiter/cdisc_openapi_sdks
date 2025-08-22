#ifndef cdashig_scenario_links_TEST
#define cdashig_scenario_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_scenario_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_scenario_links.h"
cdashig_scenario_links_t* instantiate_cdashig_scenario_links(int include_optional);

#include "test_cdashig_scenario_ref.c"
#include "test_cdashig_product_ref.c"
#include "test_cdashig_class_ref.c"
#include "test_cdashig_domain_ref.c"
#include "test_cdashig_scenario_ref.c"


cdashig_scenario_links_t* instantiate_cdashig_scenario_links(int include_optional) {
  cdashig_scenario_links_t* cdashig_scenario_links = NULL;
  if (include_optional) {
    cdashig_scenario_links = cdashig_scenario_links_create(
       // false, not to have infinite recursion
      instantiate_cdashig_scenario_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_class_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_domain_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_scenario_ref(0)
    );
  } else {
    cdashig_scenario_links = cdashig_scenario_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return cdashig_scenario_links;
}


#ifdef cdashig_scenario_links_MAIN

void test_cdashig_scenario_links(int include_optional) {
    cdashig_scenario_links_t* cdashig_scenario_links_1 = instantiate_cdashig_scenario_links(include_optional);

	cJSON* jsoncdashig_scenario_links_1 = cdashig_scenario_links_convertToJSON(cdashig_scenario_links_1);
	printf("cdashig_scenario_links :\n%s\n", cJSON_Print(jsoncdashig_scenario_links_1));
	cdashig_scenario_links_t* cdashig_scenario_links_2 = cdashig_scenario_links_parseFromJSON(jsoncdashig_scenario_links_1);
	cJSON* jsoncdashig_scenario_links_2 = cdashig_scenario_links_convertToJSON(cdashig_scenario_links_2);
	printf("repeating cdashig_scenario_links:\n%s\n", cJSON_Print(jsoncdashig_scenario_links_2));
}

int main() {
  test_cdashig_scenario_links(1);
  test_cdashig_scenario_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_scenario_links_MAIN
#endif // cdashig_scenario_links_TEST
