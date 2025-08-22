#ifndef xml_cdash_class_TEST
#define xml_cdash_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdash_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdash_class.h"
xml_cdash_class_t* instantiate_xml_cdash_class(int include_optional);

#include "test_cdash_class.c"


xml_cdash_class_t* instantiate_xml_cdash_class(int include_optional) {
  xml_cdash_class_t* xml_cdash_class = NULL;
  if (include_optional) {
    xml_cdash_class = xml_cdash_class_create(
       // false, not to have infinite recursion
      instantiate_cdash_class(0)
    );
  } else {
    xml_cdash_class = xml_cdash_class_create(
      NULL
    );
  }

  return xml_cdash_class;
}


#ifdef xml_cdash_class_MAIN

void test_xml_cdash_class(int include_optional) {
    xml_cdash_class_t* xml_cdash_class_1 = instantiate_xml_cdash_class(include_optional);

	cJSON* jsonxml_cdash_class_1 = xml_cdash_class_convertToJSON(xml_cdash_class_1);
	printf("xml_cdash_class :\n%s\n", cJSON_Print(jsonxml_cdash_class_1));
	xml_cdash_class_t* xml_cdash_class_2 = xml_cdash_class_parseFromJSON(jsonxml_cdash_class_1);
	cJSON* jsonxml_cdash_class_2 = xml_cdash_class_convertToJSON(xml_cdash_class_2);
	printf("repeating xml_cdash_class:\n%s\n", cJSON_Print(jsonxml_cdash_class_2));
}

int main() {
  test_xml_cdash_class(1);
  test_xml_cdash_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdash_class_MAIN
#endif // xml_cdash_class_TEST
