#ifndef xml_about_TEST
#define xml_about_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_about_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_about.h"
xml_about_t* instantiate_xml_about(int include_optional);

#include "test_about.c"


xml_about_t* instantiate_xml_about(int include_optional) {
  xml_about_t* xml_about = NULL;
  if (include_optional) {
    xml_about = xml_about_create(
       // false, not to have infinite recursion
      instantiate_about(0)
    );
  } else {
    xml_about = xml_about_create(
      NULL
    );
  }

  return xml_about;
}


#ifdef xml_about_MAIN

void test_xml_about(int include_optional) {
    xml_about_t* xml_about_1 = instantiate_xml_about(include_optional);

	cJSON* jsonxml_about_1 = xml_about_convertToJSON(xml_about_1);
	printf("xml_about :\n%s\n", cJSON_Print(jsonxml_about_1));
	xml_about_t* xml_about_2 = xml_about_parseFromJSON(jsonxml_about_1);
	cJSON* jsonxml_about_2 = xml_about_convertToJSON(xml_about_2);
	printf("repeating xml_about:\n%s\n", cJSON_Print(jsonxml_about_2));
}

int main() {
  test_xml_about(1);
  test_xml_about(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_about_MAIN
#endif // xml_about_TEST
