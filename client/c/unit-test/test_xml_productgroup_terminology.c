#ifndef xml_productgroup_terminology_TEST
#define xml_productgroup_terminology_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_productgroup_terminology_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_productgroup_terminology.h"
xml_productgroup_terminology_t* instantiate_xml_productgroup_terminology(int include_optional);

#include "test_productgroup_terminology.c"


xml_productgroup_terminology_t* instantiate_xml_productgroup_terminology(int include_optional) {
  xml_productgroup_terminology_t* xml_productgroup_terminology = NULL;
  if (include_optional) {
    xml_productgroup_terminology = xml_productgroup_terminology_create(
       // false, not to have infinite recursion
      instantiate_productgroup_terminology(0)
    );
  } else {
    xml_productgroup_terminology = xml_productgroup_terminology_create(
      NULL
    );
  }

  return xml_productgroup_terminology;
}


#ifdef xml_productgroup_terminology_MAIN

void test_xml_productgroup_terminology(int include_optional) {
    xml_productgroup_terminology_t* xml_productgroup_terminology_1 = instantiate_xml_productgroup_terminology(include_optional);

	cJSON* jsonxml_productgroup_terminology_1 = xml_productgroup_terminology_convertToJSON(xml_productgroup_terminology_1);
	printf("xml_productgroup_terminology :\n%s\n", cJSON_Print(jsonxml_productgroup_terminology_1));
	xml_productgroup_terminology_t* xml_productgroup_terminology_2 = xml_productgroup_terminology_parseFromJSON(jsonxml_productgroup_terminology_1);
	cJSON* jsonxml_productgroup_terminology_2 = xml_productgroup_terminology_convertToJSON(xml_productgroup_terminology_2);
	printf("repeating xml_productgroup_terminology:\n%s\n", cJSON_Print(jsonxml_productgroup_terminology_2));
}

int main() {
  test_xml_productgroup_terminology(1);
  test_xml_productgroup_terminology(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_productgroup_terminology_MAIN
#endif // xml_productgroup_terminology_TEST
