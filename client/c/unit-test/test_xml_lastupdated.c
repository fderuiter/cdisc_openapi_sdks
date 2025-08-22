#ifndef xml_lastupdated_TEST
#define xml_lastupdated_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_lastupdated_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_lastupdated.h"
xml_lastupdated_t* instantiate_xml_lastupdated(int include_optional);

#include "test_lastupdated.c"


xml_lastupdated_t* instantiate_xml_lastupdated(int include_optional) {
  xml_lastupdated_t* xml_lastupdated = NULL;
  if (include_optional) {
    xml_lastupdated = xml_lastupdated_create(
       // false, not to have infinite recursion
      instantiate_lastupdated(0)
    );
  } else {
    xml_lastupdated = xml_lastupdated_create(
      NULL
    );
  }

  return xml_lastupdated;
}


#ifdef xml_lastupdated_MAIN

void test_xml_lastupdated(int include_optional) {
    xml_lastupdated_t* xml_lastupdated_1 = instantiate_xml_lastupdated(include_optional);

	cJSON* jsonxml_lastupdated_1 = xml_lastupdated_convertToJSON(xml_lastupdated_1);
	printf("xml_lastupdated :\n%s\n", cJSON_Print(jsonxml_lastupdated_1));
	xml_lastupdated_t* xml_lastupdated_2 = xml_lastupdated_parseFromJSON(jsonxml_lastupdated_1);
	cJSON* jsonxml_lastupdated_2 = xml_lastupdated_convertToJSON(xml_lastupdated_2);
	printf("repeating xml_lastupdated:\n%s\n", cJSON_Print(jsonxml_lastupdated_2));
}

int main() {
  test_xml_lastupdated(1);
  test_xml_lastupdated(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_lastupdated_MAIN
#endif // xml_lastupdated_TEST
