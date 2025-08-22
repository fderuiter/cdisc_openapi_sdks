#ifndef xml_productgroup_data_tabulation_TEST
#define xml_productgroup_data_tabulation_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_productgroup_data_tabulation_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_productgroup_data_tabulation.h"
xml_productgroup_data_tabulation_t* instantiate_xml_productgroup_data_tabulation(int include_optional);

#include "test_productgroup_data_tabulation.c"


xml_productgroup_data_tabulation_t* instantiate_xml_productgroup_data_tabulation(int include_optional) {
  xml_productgroup_data_tabulation_t* xml_productgroup_data_tabulation = NULL;
  if (include_optional) {
    xml_productgroup_data_tabulation = xml_productgroup_data_tabulation_create(
       // false, not to have infinite recursion
      instantiate_productgroup_data_tabulation(0)
    );
  } else {
    xml_productgroup_data_tabulation = xml_productgroup_data_tabulation_create(
      NULL
    );
  }

  return xml_productgroup_data_tabulation;
}


#ifdef xml_productgroup_data_tabulation_MAIN

void test_xml_productgroup_data_tabulation(int include_optional) {
    xml_productgroup_data_tabulation_t* xml_productgroup_data_tabulation_1 = instantiate_xml_productgroup_data_tabulation(include_optional);

	cJSON* jsonxml_productgroup_data_tabulation_1 = xml_productgroup_data_tabulation_convertToJSON(xml_productgroup_data_tabulation_1);
	printf("xml_productgroup_data_tabulation :\n%s\n", cJSON_Print(jsonxml_productgroup_data_tabulation_1));
	xml_productgroup_data_tabulation_t* xml_productgroup_data_tabulation_2 = xml_productgroup_data_tabulation_parseFromJSON(jsonxml_productgroup_data_tabulation_1);
	cJSON* jsonxml_productgroup_data_tabulation_2 = xml_productgroup_data_tabulation_convertToJSON(xml_productgroup_data_tabulation_2);
	printf("repeating xml_productgroup_data_tabulation:\n%s\n", cJSON_Print(jsonxml_productgroup_data_tabulation_2));
}

int main() {
  test_xml_productgroup_data_tabulation(1);
  test_xml_productgroup_data_tabulation(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_productgroup_data_tabulation_MAIN
#endif // xml_productgroup_data_tabulation_TEST
