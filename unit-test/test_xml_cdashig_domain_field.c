#ifndef xml_cdashig_domain_field_TEST
#define xml_cdashig_domain_field_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_domain_field_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_domain_field.h"
xml_cdashig_domain_field_t* instantiate_xml_cdashig_domain_field(int include_optional);

#include "test_cdashig_domain_field.c"


xml_cdashig_domain_field_t* instantiate_xml_cdashig_domain_field(int include_optional) {
  xml_cdashig_domain_field_t* xml_cdashig_domain_field = NULL;
  if (include_optional) {
    xml_cdashig_domain_field = xml_cdashig_domain_field_create(
       // false, not to have infinite recursion
      instantiate_cdashig_domain_field(0)
    );
  } else {
    xml_cdashig_domain_field = xml_cdashig_domain_field_create(
      NULL
    );
  }

  return xml_cdashig_domain_field;
}


#ifdef xml_cdashig_domain_field_MAIN

void test_xml_cdashig_domain_field(int include_optional) {
    xml_cdashig_domain_field_t* xml_cdashig_domain_field_1 = instantiate_xml_cdashig_domain_field(include_optional);

	cJSON* jsonxml_cdashig_domain_field_1 = xml_cdashig_domain_field_convertToJSON(xml_cdashig_domain_field_1);
	printf("xml_cdashig_domain_field :\n%s\n", cJSON_Print(jsonxml_cdashig_domain_field_1));
	xml_cdashig_domain_field_t* xml_cdashig_domain_field_2 = xml_cdashig_domain_field_parseFromJSON(jsonxml_cdashig_domain_field_1);
	cJSON* jsonxml_cdashig_domain_field_2 = xml_cdashig_domain_field_convertToJSON(xml_cdashig_domain_field_2);
	printf("repeating xml_cdashig_domain_field:\n%s\n", cJSON_Print(jsonxml_cdashig_domain_field_2));
}

int main() {
  test_xml_cdashig_domain_field(1);
  test_xml_cdashig_domain_field(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_domain_field_MAIN
#endif // xml_cdashig_domain_field_TEST
