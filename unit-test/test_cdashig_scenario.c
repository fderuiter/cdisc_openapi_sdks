#ifndef cdashig_scenario_TEST
#define cdashig_scenario_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_scenario_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_scenario.h"
cdashig_scenario_t* instantiate_cdashig_scenario(int include_optional);

#include "test_cdashig_scenario_links.c"


cdashig_scenario_t* instantiate_cdashig_scenario(int include_optional) {
  cdashig_scenario_t* cdashig_scenario = NULL;
  if (include_optional) {
    cdashig_scenario = cdashig_scenario_create(
      "19",
      "Vital Signs",
      "VS - Implementation Options: HorizontalGeneric",
       // false, not to have infinite recursion
      instantiate_cdashig_scenario_links(0),
      list_createList()
    );
  } else {
    cdashig_scenario = cdashig_scenario_create(
      "19",
      "Vital Signs",
      "VS - Implementation Options: HorizontalGeneric",
      NULL,
      list_createList()
    );
  }

  return cdashig_scenario;
}


#ifdef cdashig_scenario_MAIN

void test_cdashig_scenario(int include_optional) {
    cdashig_scenario_t* cdashig_scenario_1 = instantiate_cdashig_scenario(include_optional);

	cJSON* jsoncdashig_scenario_1 = cdashig_scenario_convertToJSON(cdashig_scenario_1);
	printf("cdashig_scenario :\n%s\n", cJSON_Print(jsoncdashig_scenario_1));
	cdashig_scenario_t* cdashig_scenario_2 = cdashig_scenario_parseFromJSON(jsoncdashig_scenario_1);
	cJSON* jsoncdashig_scenario_2 = cdashig_scenario_convertToJSON(cdashig_scenario_2);
	printf("repeating cdashig_scenario:\n%s\n", cJSON_Print(jsoncdashig_scenario_2));
}

int main() {
  test_cdashig_scenario(1);
  test_cdashig_scenario(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_scenario_MAIN
#endif // cdashig_scenario_TEST
