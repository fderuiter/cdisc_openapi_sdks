#ifndef xml_productgroup_data_analysis_TEST
#define xml_productgroup_data_analysis_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_productgroup_data_analysis_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_productgroup_data_analysis.h"
xml_productgroup_data_analysis_t* instantiate_xml_productgroup_data_analysis(int include_optional);

#include "test_productgroup_data_analysis.c"


xml_productgroup_data_analysis_t* instantiate_xml_productgroup_data_analysis(int include_optional) {
  xml_productgroup_data_analysis_t* xml_productgroup_data_analysis = NULL;
  if (include_optional) {
    xml_productgroup_data_analysis = xml_productgroup_data_analysis_create(
       // false, not to have infinite recursion
      instantiate_productgroup_data_analysis(0)
    );
  } else {
    xml_productgroup_data_analysis = xml_productgroup_data_analysis_create(
      NULL
    );
  }

  return xml_productgroup_data_analysis;
}


#ifdef xml_productgroup_data_analysis_MAIN

void test_xml_productgroup_data_analysis(int include_optional) {
    xml_productgroup_data_analysis_t* xml_productgroup_data_analysis_1 = instantiate_xml_productgroup_data_analysis(include_optional);

	cJSON* jsonxml_productgroup_data_analysis_1 = xml_productgroup_data_analysis_convertToJSON(xml_productgroup_data_analysis_1);
	printf("xml_productgroup_data_analysis :\n%s\n", cJSON_Print(jsonxml_productgroup_data_analysis_1));
	xml_productgroup_data_analysis_t* xml_productgroup_data_analysis_2 = xml_productgroup_data_analysis_parseFromJSON(jsonxml_productgroup_data_analysis_1);
	cJSON* jsonxml_productgroup_data_analysis_2 = xml_productgroup_data_analysis_convertToJSON(xml_productgroup_data_analysis_2);
	printf("repeating xml_productgroup_data_analysis:\n%s\n", cJSON_Print(jsonxml_productgroup_data_analysis_2));
}

int main() {
  test_xml_productgroup_data_analysis(1);
  test_xml_productgroup_data_analysis(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_productgroup_data_analysis_MAIN
#endif // xml_productgroup_data_analysis_TEST
