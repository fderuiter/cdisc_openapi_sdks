#ifndef root_cdashig_scenario_field_TEST
#define root_cdashig_scenario_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_cdashig_scenario_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_cdashig_scenario_field.h"
root_cdashig_scenario_field_t* instantiate_root_cdashig_scenario_field(int include_optional);

#include "test_root_cdashig_scenario_field_links.c"


root_cdashig_scenario_field_t* instantiate_root_cdashig_scenario_field(int include_optional) {
  root_cdashig_scenario_field_t* root_cdashig_scenario_field = NULL;
  if (include_optional) {
    root_cdashig_scenario_field = root_cdashig_scenario_field_create(
       // false, not to have infinite recursion
      instantiate_root_cdashig_scenario_field_links(0)
    );
  } else {
    root_cdashig_scenario_field = root_cdashig_scenario_field_create(
      NULL
    );
  }

  return root_cdashig_scenario_field;
}


#ifdef root_cdashig_scenario_field_MAIN

void test_root_cdashig_scenario_field(int include_optional) {
    root_cdashig_scenario_field_t* root_cdashig_scenario_field_1 = instantiate_root_cdashig_scenario_field(include_optional);

	cJSON* jsonroot_cdashig_scenario_field_1 = root_cdashig_scenario_field_convertToJSON(root_cdashig_scenario_field_1);
	printf("root_cdashig_scenario_field :\n%s\n", cJSON_Print(jsonroot_cdashig_scenario_field_1));
	root_cdashig_scenario_field_t* root_cdashig_scenario_field_2 = root_cdashig_scenario_field_parseFromJSON(jsonroot_cdashig_scenario_field_1);
	cJSON* jsonroot_cdashig_scenario_field_2 = root_cdashig_scenario_field_convertToJSON(root_cdashig_scenario_field_2);
	printf("repeating root_cdashig_scenario_field:\n%s\n", cJSON_Print(jsonroot_cdashig_scenario_field_2));
}

int main() {
  test_root_cdashig_scenario_field(1);
  test_root_cdashig_scenario_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_cdashig_scenario_field_MAIN
#endif // root_cdashig_scenario_field_TEST
