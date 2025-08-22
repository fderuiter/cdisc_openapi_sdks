#ifndef xml_ct_package_TEST
#define xml_ct_package_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_ct_package_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_ct_package.h"
xml_ct_package_t* instantiate_xml_ct_package(int include_optional);

#include "test_ct_package.c"


xml_ct_package_t* instantiate_xml_ct_package(int include_optional) {
  xml_ct_package_t* xml_ct_package = NULL;
  if (include_optional) {
    xml_ct_package = xml_ct_package_create(
       // false, not to have infinite recursion
      instantiate_ct_package(0)
    );
  } else {
    xml_ct_package = xml_ct_package_create(
      NULL
    );
  }

  return xml_ct_package;
}


#ifdef xml_ct_package_MAIN

void test_xml_ct_package(int include_optional) {
    xml_ct_package_t* xml_ct_package_1 = instantiate_xml_ct_package(include_optional);

	cJSON* jsonxml_ct_package_1 = xml_ct_package_convertToJSON(xml_ct_package_1);
	printf("xml_ct_package :\n%s\n", cJSON_Print(jsonxml_ct_package_1));
	xml_ct_package_t* xml_ct_package_2 = xml_ct_package_parseFromJSON(jsonxml_ct_package_1);
	cJSON* jsonxml_ct_package_2 = xml_ct_package_convertToJSON(xml_ct_package_2);
	printf("repeating xml_ct_package:\n%s\n", cJSON_Print(jsonxml_ct_package_2));
}

int main() {
  test_xml_ct_package(1);
  test_xml_ct_package(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_ct_package_MAIN
#endif // xml_ct_package_TEST
