#ifndef root_cdashig_scenario_field_ref_TEST
#define root_cdashig_scenario_field_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_cdashig_scenario_field_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_cdashig_scenario_field_ref.h"
root_cdashig_scenario_field_ref_t* instantiate_root_cdashig_scenario_field_ref(int include_optional);



root_cdashig_scenario_field_ref_t* instantiate_root_cdashig_scenario_field_ref(int include_optional) {
  root_cdashig_scenario_field_ref_t* root_cdashig_scenario_field_ref = NULL;
  if (include_optional) {
    root_cdashig_scenario_field_ref = root_cdashig_scenario_field_ref_create(
      "/mdr/root/cdashig/scenarios/VS.Generic/fields/VSDAT",
      "Version-agnostic anchor element for scenario field VS.Generic.VSDAT",
      "Root Data Element"
    );
  } else {
    root_cdashig_scenario_field_ref = root_cdashig_scenario_field_ref_create(
      "/mdr/root/cdashig/scenarios/VS.Generic/fields/VSDAT",
      "Version-agnostic anchor element for scenario field VS.Generic.VSDAT",
      "Root Data Element"
    );
  }

  return root_cdashig_scenario_field_ref;
}


#ifdef root_cdashig_scenario_field_ref_MAIN

void test_root_cdashig_scenario_field_ref(int include_optional) {
    root_cdashig_scenario_field_ref_t* root_cdashig_scenario_field_ref_1 = instantiate_root_cdashig_scenario_field_ref(include_optional);

	cJSON* jsonroot_cdashig_scenario_field_ref_1 = root_cdashig_scenario_field_ref_convertToJSON(root_cdashig_scenario_field_ref_1);
	printf("root_cdashig_scenario_field_ref :\n%s\n", cJSON_Print(jsonroot_cdashig_scenario_field_ref_1));
	root_cdashig_scenario_field_ref_t* root_cdashig_scenario_field_ref_2 = root_cdashig_scenario_field_ref_parseFromJSON(jsonroot_cdashig_scenario_field_ref_1);
	cJSON* jsonroot_cdashig_scenario_field_ref_2 = root_cdashig_scenario_field_ref_convertToJSON(root_cdashig_scenario_field_ref_2);
	printf("repeating root_cdashig_scenario_field_ref:\n%s\n", cJSON_Print(jsonroot_cdashig_scenario_field_ref_2));
}

int main() {
  test_root_cdashig_scenario_field_ref(1);
  test_root_cdashig_scenario_field_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_cdashig_scenario_field_ref_MAIN
#endif // root_cdashig_scenario_field_ref_TEST
