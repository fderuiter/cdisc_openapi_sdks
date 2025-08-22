#ifndef xml_cdashig_scenario_TEST
#define xml_cdashig_scenario_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_scenario_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_scenario.h"
xml_cdashig_scenario_t* instantiate_xml_cdashig_scenario(int include_optional);

#include "test_cdashig_scenario.c"


xml_cdashig_scenario_t* instantiate_xml_cdashig_scenario(int include_optional) {
  xml_cdashig_scenario_t* xml_cdashig_scenario = NULL;
  if (include_optional) {
    xml_cdashig_scenario = xml_cdashig_scenario_create(
       // false, not to have infinite recursion
      instantiate_cdashig_scenario(0)
    );
  } else {
    xml_cdashig_scenario = xml_cdashig_scenario_create(
      NULL
    );
  }

  return xml_cdashig_scenario;
}


#ifdef xml_cdashig_scenario_MAIN

void test_xml_cdashig_scenario(int include_optional) {
    xml_cdashig_scenario_t* xml_cdashig_scenario_1 = instantiate_xml_cdashig_scenario(include_optional);

	cJSON* jsonxml_cdashig_scenario_1 = xml_cdashig_scenario_convertToJSON(xml_cdashig_scenario_1);
	printf("xml_cdashig_scenario :\n%s\n", cJSON_Print(jsonxml_cdashig_scenario_1));
	xml_cdashig_scenario_t* xml_cdashig_scenario_2 = xml_cdashig_scenario_parseFromJSON(jsonxml_cdashig_scenario_1);
	cJSON* jsonxml_cdashig_scenario_2 = xml_cdashig_scenario_convertToJSON(xml_cdashig_scenario_2);
	printf("repeating xml_cdashig_scenario:\n%s\n", cJSON_Print(jsonxml_cdashig_scenario_2));
}

int main() {
  test_xml_cdashig_scenario(1);
  test_xml_cdashig_scenario(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_scenario_MAIN
#endif // xml_cdashig_scenario_TEST
