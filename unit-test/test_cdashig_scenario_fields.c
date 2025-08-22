#ifndef cdashig_scenario_fields_TEST
#define cdashig_scenario_fields_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_scenario_fields_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_scenario_fields.h"
cdashig_scenario_fields_t* instantiate_cdashig_scenario_fields(int include_optional);

#include "test_cdashig_scenario_fields_links.c"


cdashig_scenario_fields_t* instantiate_cdashig_scenario_fields(int include_optional) {
  cdashig_scenario_fields_t* cdashig_scenario_fields = NULL;
  if (include_optional) {
    cdashig_scenario_fields = cdashig_scenario_fields_create(
      "19",
      "Vital Signs",
      "VS - Implementation Options: HorizontalGeneric",
       // false, not to have infinite recursion
      instantiate_cdashig_scenario_fields_links(0)
    );
  } else {
    cdashig_scenario_fields = cdashig_scenario_fields_create(
      "19",
      "Vital Signs",
      "VS - Implementation Options: HorizontalGeneric",
      NULL
    );
  }

  return cdashig_scenario_fields;
}


#ifdef cdashig_scenario_fields_MAIN

void test_cdashig_scenario_fields(int include_optional) {
    cdashig_scenario_fields_t* cdashig_scenario_fields_1 = instantiate_cdashig_scenario_fields(include_optional);

	cJSON* jsoncdashig_scenario_fields_1 = cdashig_scenario_fields_convertToJSON(cdashig_scenario_fields_1);
	printf("cdashig_scenario_fields :\n%s\n", cJSON_Print(jsoncdashig_scenario_fields_1));
	cdashig_scenario_fields_t* cdashig_scenario_fields_2 = cdashig_scenario_fields_parseFromJSON(jsoncdashig_scenario_fields_1);
	cJSON* jsoncdashig_scenario_fields_2 = cdashig_scenario_fields_convertToJSON(cdashig_scenario_fields_2);
	printf("repeating cdashig_scenario_fields:\n%s\n", cJSON_Print(jsoncdashig_scenario_fields_2));
}

int main() {
  test_cdashig_scenario_fields(1);
  test_cdashig_scenario_fields(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_scenario_fields_MAIN
#endif // cdashig_scenario_fields_TEST
