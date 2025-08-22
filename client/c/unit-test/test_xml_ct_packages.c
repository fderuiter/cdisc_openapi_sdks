#ifndef xml_ct_packages_TEST
#define xml_ct_packages_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_ct_packages_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_ct_packages.h"
xml_ct_packages_t* instantiate_xml_ct_packages(int include_optional);

#include "test_ct_packages.c"


xml_ct_packages_t* instantiate_xml_ct_packages(int include_optional) {
  xml_ct_packages_t* xml_ct_packages = NULL;
  if (include_optional) {
    xml_ct_packages = xml_ct_packages_create(
       // false, not to have infinite recursion
      instantiate_ct_packages(0)
    );
  } else {
    xml_ct_packages = xml_ct_packages_create(
      NULL
    );
  }

  return xml_ct_packages;
}


#ifdef xml_ct_packages_MAIN

void test_xml_ct_packages(int include_optional) {
    xml_ct_packages_t* xml_ct_packages_1 = instantiate_xml_ct_packages(include_optional);

	cJSON* jsonxml_ct_packages_1 = xml_ct_packages_convertToJSON(xml_ct_packages_1);
	printf("xml_ct_packages :\n%s\n", cJSON_Print(jsonxml_ct_packages_1));
	xml_ct_packages_t* xml_ct_packages_2 = xml_ct_packages_parseFromJSON(jsonxml_ct_packages_1);
	cJSON* jsonxml_ct_packages_2 = xml_ct_packages_convertToJSON(xml_ct_packages_2);
	printf("repeating xml_ct_packages:\n%s\n", cJSON_Print(jsonxml_ct_packages_2));
}

int main() {
  test_xml_ct_packages(1);
  test_xml_ct_packages(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_ct_packages_MAIN
#endif // xml_ct_packages_TEST
