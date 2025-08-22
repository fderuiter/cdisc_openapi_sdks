#ifndef xml_root_cdash_domain_field_TEST
#define xml_root_cdash_domain_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_root_cdash_domain_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_root_cdash_domain_field.h"
xml_root_cdash_domain_field_t* instantiate_xml_root_cdash_domain_field(int include_optional);

#include "test_root_cdash_domain_field.c"


xml_root_cdash_domain_field_t* instantiate_xml_root_cdash_domain_field(int include_optional) {
  xml_root_cdash_domain_field_t* xml_root_cdash_domain_field = NULL;
  if (include_optional) {
    xml_root_cdash_domain_field = xml_root_cdash_domain_field_create(
       // false, not to have infinite recursion
      instantiate_root_cdash_domain_field(0)
    );
  } else {
    xml_root_cdash_domain_field = xml_root_cdash_domain_field_create(
      NULL
    );
  }

  return xml_root_cdash_domain_field;
}


#ifdef xml_root_cdash_domain_field_MAIN

void test_xml_root_cdash_domain_field(int include_optional) {
    xml_root_cdash_domain_field_t* xml_root_cdash_domain_field_1 = instantiate_xml_root_cdash_domain_field(include_optional);

	cJSON* jsonxml_root_cdash_domain_field_1 = xml_root_cdash_domain_field_convertToJSON(xml_root_cdash_domain_field_1);
	printf("xml_root_cdash_domain_field :\n%s\n", cJSON_Print(jsonxml_root_cdash_domain_field_1));
	xml_root_cdash_domain_field_t* xml_root_cdash_domain_field_2 = xml_root_cdash_domain_field_parseFromJSON(jsonxml_root_cdash_domain_field_1);
	cJSON* jsonxml_root_cdash_domain_field_2 = xml_root_cdash_domain_field_convertToJSON(xml_root_cdash_domain_field_2);
	printf("repeating xml_root_cdash_domain_field:\n%s\n", cJSON_Print(jsonxml_root_cdash_domain_field_2));
}

int main() {
  test_xml_root_cdash_domain_field(1);
  test_xml_root_cdash_domain_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_root_cdash_domain_field_MAIN
#endif // xml_root_cdash_domain_field_TEST
