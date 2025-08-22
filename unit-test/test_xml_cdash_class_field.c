#ifndef xml_cdash_class_field_TEST
#define xml_cdash_class_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdash_class_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdash_class_field.h"
xml_cdash_class_field_t* instantiate_xml_cdash_class_field(int include_optional);

#include "test_cdash_class_field.c"


xml_cdash_class_field_t* instantiate_xml_cdash_class_field(int include_optional) {
  xml_cdash_class_field_t* xml_cdash_class_field = NULL;
  if (include_optional) {
    xml_cdash_class_field = xml_cdash_class_field_create(
       // false, not to have infinite recursion
      instantiate_cdash_class_field(0)
    );
  } else {
    xml_cdash_class_field = xml_cdash_class_field_create(
      NULL
    );
  }

  return xml_cdash_class_field;
}


#ifdef xml_cdash_class_field_MAIN

void test_xml_cdash_class_field(int include_optional) {
    xml_cdash_class_field_t* xml_cdash_class_field_1 = instantiate_xml_cdash_class_field(include_optional);

	cJSON* jsonxml_cdash_class_field_1 = xml_cdash_class_field_convertToJSON(xml_cdash_class_field_1);
	printf("xml_cdash_class_field :\n%s\n", cJSON_Print(jsonxml_cdash_class_field_1));
	xml_cdash_class_field_t* xml_cdash_class_field_2 = xml_cdash_class_field_parseFromJSON(jsonxml_cdash_class_field_1);
	cJSON* jsonxml_cdash_class_field_2 = xml_cdash_class_field_convertToJSON(xml_cdash_class_field_2);
	printf("repeating xml_cdash_class_field:\n%s\n", cJSON_Print(jsonxml_cdash_class_field_2));
}

int main() {
  test_xml_cdash_class_field(1);
  test_xml_cdash_class_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdash_class_field_MAIN
#endif // xml_cdash_class_field_TEST
