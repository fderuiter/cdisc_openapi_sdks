#ifndef xml_cdashig_class_TEST
#define xml_cdashig_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_class.h"
xml_cdashig_class_t* instantiate_xml_cdashig_class(int include_optional);

#include "test_cdashig_class.c"


xml_cdashig_class_t* instantiate_xml_cdashig_class(int include_optional) {
  xml_cdashig_class_t* xml_cdashig_class = NULL;
  if (include_optional) {
    xml_cdashig_class = xml_cdashig_class_create(
       // false, not to have infinite recursion
      instantiate_cdashig_class(0)
    );
  } else {
    xml_cdashig_class = xml_cdashig_class_create(
      NULL
    );
  }

  return xml_cdashig_class;
}


#ifdef xml_cdashig_class_MAIN

void test_xml_cdashig_class(int include_optional) {
    xml_cdashig_class_t* xml_cdashig_class_1 = instantiate_xml_cdashig_class(include_optional);

	cJSON* jsonxml_cdashig_class_1 = xml_cdashig_class_convertToJSON(xml_cdashig_class_1);
	printf("xml_cdashig_class :\n%s\n", cJSON_Print(jsonxml_cdashig_class_1));
	xml_cdashig_class_t* xml_cdashig_class_2 = xml_cdashig_class_parseFromJSON(jsonxml_cdashig_class_1);
	cJSON* jsonxml_cdashig_class_2 = xml_cdashig_class_convertToJSON(xml_cdashig_class_2);
	printf("repeating xml_cdashig_class:\n%s\n", cJSON_Print(jsonxml_cdashig_class_2));
}

int main() {
  test_xml_cdashig_class(1);
  test_xml_cdashig_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_class_MAIN
#endif // xml_cdashig_class_TEST
