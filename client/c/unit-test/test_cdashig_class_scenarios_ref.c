#ifndef cdashig_class_scenarios_ref_TEST
#define cdashig_class_scenarios_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_scenarios_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_scenarios_ref.h"
cdashig_class_scenarios_ref_t* instantiate_cdashig_class_scenarios_ref(int include_optional);



cdashig_class_scenarios_ref_t* instantiate_cdashig_class_scenarios_ref(int include_optional) {
  cdashig_class_scenarios_ref_t* cdashig_class_scenarios_ref = NULL;
  if (include_optional) {
    cdashig_class_scenarios_ref = cdashig_class_scenarios_ref_create(
      "/mdr/cdashig/2-1/classes/Findings/scenarios",
      "Findings",
      "CDASHIG Class Scenario List"
    );
  } else {
    cdashig_class_scenarios_ref = cdashig_class_scenarios_ref_create(
      "/mdr/cdashig/2-1/classes/Findings/scenarios",
      "Findings",
      "CDASHIG Class Scenario List"
    );
  }

  return cdashig_class_scenarios_ref;
}


#ifdef cdashig_class_scenarios_ref_MAIN

void test_cdashig_class_scenarios_ref(int include_optional) {
    cdashig_class_scenarios_ref_t* cdashig_class_scenarios_ref_1 = instantiate_cdashig_class_scenarios_ref(include_optional);

	cJSON* jsoncdashig_class_scenarios_ref_1 = cdashig_class_scenarios_ref_convertToJSON(cdashig_class_scenarios_ref_1);
	printf("cdashig_class_scenarios_ref :\n%s\n", cJSON_Print(jsoncdashig_class_scenarios_ref_1));
	cdashig_class_scenarios_ref_t* cdashig_class_scenarios_ref_2 = cdashig_class_scenarios_ref_parseFromJSON(jsoncdashig_class_scenarios_ref_1);
	cJSON* jsoncdashig_class_scenarios_ref_2 = cdashig_class_scenarios_ref_convertToJSON(cdashig_class_scenarios_ref_2);
	printf("repeating cdashig_class_scenarios_ref:\n%s\n", cJSON_Print(jsoncdashig_class_scenarios_ref_2));
}

int main() {
  test_cdashig_class_scenarios_ref(1);
  test_cdashig_class_scenarios_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_scenarios_ref_MAIN
#endif // cdashig_class_scenarios_ref_TEST
