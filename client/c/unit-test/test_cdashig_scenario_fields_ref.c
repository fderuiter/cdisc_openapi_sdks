#ifndef cdashig_scenario_fields_ref_TEST
#define cdashig_scenario_fields_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_scenario_fields_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_scenario_fields_ref.h"
cdashig_scenario_fields_ref_t* instantiate_cdashig_scenario_fields_ref(int include_optional);



cdashig_scenario_fields_ref_t* instantiate_cdashig_scenario_fields_ref(int include_optional) {
  cdashig_scenario_fields_ref_t* cdashig_scenario_fields_ref = NULL;
  if (include_optional) {
    cdashig_scenario_fields_ref = cdashig_scenario_fields_ref_create(
      "/mdr/cdashig/2-1/scenarios/VS.HorizontalGeneric/fields",
      "VS - Implementation Options: HorizontalGeneric",
      "CDASHIG Scenario Field List"
    );
  } else {
    cdashig_scenario_fields_ref = cdashig_scenario_fields_ref_create(
      "/mdr/cdashig/2-1/scenarios/VS.HorizontalGeneric/fields",
      "VS - Implementation Options: HorizontalGeneric",
      "CDASHIG Scenario Field List"
    );
  }

  return cdashig_scenario_fields_ref;
}


#ifdef cdashig_scenario_fields_ref_MAIN

void test_cdashig_scenario_fields_ref(int include_optional) {
    cdashig_scenario_fields_ref_t* cdashig_scenario_fields_ref_1 = instantiate_cdashig_scenario_fields_ref(include_optional);

	cJSON* jsoncdashig_scenario_fields_ref_1 = cdashig_scenario_fields_ref_convertToJSON(cdashig_scenario_fields_ref_1);
	printf("cdashig_scenario_fields_ref :\n%s\n", cJSON_Print(jsoncdashig_scenario_fields_ref_1));
	cdashig_scenario_fields_ref_t* cdashig_scenario_fields_ref_2 = cdashig_scenario_fields_ref_parseFromJSON(jsoncdashig_scenario_fields_ref_1);
	cJSON* jsoncdashig_scenario_fields_ref_2 = cdashig_scenario_fields_ref_convertToJSON(cdashig_scenario_fields_ref_2);
	printf("repeating cdashig_scenario_fields_ref:\n%s\n", cJSON_Print(jsoncdashig_scenario_fields_ref_2));
}

int main() {
  test_cdashig_scenario_fields_ref(1);
  test_cdashig_scenario_fields_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_scenario_fields_ref_MAIN
#endif // cdashig_scenario_fields_ref_TEST
