#ifndef xml_cdashig_product_scenarios_TEST
#define xml_cdashig_product_scenarios_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_product_scenarios_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_product_scenarios.h"
xml_cdashig_product_scenarios_t* instantiate_xml_cdashig_product_scenarios(int include_optional);

#include "test_cdashig_product_scenarios.c"


xml_cdashig_product_scenarios_t* instantiate_xml_cdashig_product_scenarios(int include_optional) {
  xml_cdashig_product_scenarios_t* xml_cdashig_product_scenarios = NULL;
  if (include_optional) {
    xml_cdashig_product_scenarios = xml_cdashig_product_scenarios_create(
       // false, not to have infinite recursion
      instantiate_cdashig_product_scenarios(0)
    );
  } else {
    xml_cdashig_product_scenarios = xml_cdashig_product_scenarios_create(
      NULL
    );
  }

  return xml_cdashig_product_scenarios;
}


#ifdef xml_cdashig_product_scenarios_MAIN

void test_xml_cdashig_product_scenarios(int include_optional) {
    xml_cdashig_product_scenarios_t* xml_cdashig_product_scenarios_1 = instantiate_xml_cdashig_product_scenarios(include_optional);

	cJSON* jsonxml_cdashig_product_scenarios_1 = xml_cdashig_product_scenarios_convertToJSON(xml_cdashig_product_scenarios_1);
	printf("xml_cdashig_product_scenarios :\n%s\n", cJSON_Print(jsonxml_cdashig_product_scenarios_1));
	xml_cdashig_product_scenarios_t* xml_cdashig_product_scenarios_2 = xml_cdashig_product_scenarios_parseFromJSON(jsonxml_cdashig_product_scenarios_1);
	cJSON* jsonxml_cdashig_product_scenarios_2 = xml_cdashig_product_scenarios_convertToJSON(xml_cdashig_product_scenarios_2);
	printf("repeating xml_cdashig_product_scenarios:\n%s\n", cJSON_Print(jsonxml_cdashig_product_scenarios_2));
}

int main() {
  test_xml_cdashig_product_scenarios(1);
  test_xml_cdashig_product_scenarios(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_product_scenarios_MAIN
#endif // xml_cdashig_product_scenarios_TEST
