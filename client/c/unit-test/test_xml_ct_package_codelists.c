#ifndef xml_ct_package_codelists_TEST
#define xml_ct_package_codelists_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_ct_package_codelists_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_ct_package_codelists.h"
xml_ct_package_codelists_t* instantiate_xml_ct_package_codelists(int include_optional);

#include "test_ct_package_codelists.c"


xml_ct_package_codelists_t* instantiate_xml_ct_package_codelists(int include_optional) {
  xml_ct_package_codelists_t* xml_ct_package_codelists = NULL;
  if (include_optional) {
    xml_ct_package_codelists = xml_ct_package_codelists_create(
       // false, not to have infinite recursion
      instantiate_ct_package_codelists(0)
    );
  } else {
    xml_ct_package_codelists = xml_ct_package_codelists_create(
      NULL
    );
  }

  return xml_ct_package_codelists;
}


#ifdef xml_ct_package_codelists_MAIN

void test_xml_ct_package_codelists(int include_optional) {
    xml_ct_package_codelists_t* xml_ct_package_codelists_1 = instantiate_xml_ct_package_codelists(include_optional);

	cJSON* jsonxml_ct_package_codelists_1 = xml_ct_package_codelists_convertToJSON(xml_ct_package_codelists_1);
	printf("xml_ct_package_codelists :\n%s\n", cJSON_Print(jsonxml_ct_package_codelists_1));
	xml_ct_package_codelists_t* xml_ct_package_codelists_2 = xml_ct_package_codelists_parseFromJSON(jsonxml_ct_package_codelists_1);
	cJSON* jsonxml_ct_package_codelists_2 = xml_ct_package_codelists_convertToJSON(xml_ct_package_codelists_2);
	printf("repeating xml_ct_package_codelists:\n%s\n", cJSON_Print(jsonxml_ct_package_codelists_2));
}

int main() {
  test_xml_ct_package_codelists(1);
  test_xml_ct_package_codelists(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_ct_package_codelists_MAIN
#endif // xml_ct_package_codelists_TEST
