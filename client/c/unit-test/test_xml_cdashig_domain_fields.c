#ifndef xml_cdashig_domain_fields_TEST
#define xml_cdashig_domain_fields_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_domain_fields_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_domain_fields.h"
xml_cdashig_domain_fields_t* instantiate_xml_cdashig_domain_fields(int include_optional);

#include "test_cdashig_domain_fields.c"


xml_cdashig_domain_fields_t* instantiate_xml_cdashig_domain_fields(int include_optional) {
  xml_cdashig_domain_fields_t* xml_cdashig_domain_fields = NULL;
  if (include_optional) {
    xml_cdashig_domain_fields = xml_cdashig_domain_fields_create(
       // false, not to have infinite recursion
      instantiate_cdashig_domain_fields(0)
    );
  } else {
    xml_cdashig_domain_fields = xml_cdashig_domain_fields_create(
      NULL
    );
  }

  return xml_cdashig_domain_fields;
}


#ifdef xml_cdashig_domain_fields_MAIN

void test_xml_cdashig_domain_fields(int include_optional) {
    xml_cdashig_domain_fields_t* xml_cdashig_domain_fields_1 = instantiate_xml_cdashig_domain_fields(include_optional);

	cJSON* jsonxml_cdashig_domain_fields_1 = xml_cdashig_domain_fields_convertToJSON(xml_cdashig_domain_fields_1);
	printf("xml_cdashig_domain_fields :\n%s\n", cJSON_Print(jsonxml_cdashig_domain_fields_1));
	xml_cdashig_domain_fields_t* xml_cdashig_domain_fields_2 = xml_cdashig_domain_fields_parseFromJSON(jsonxml_cdashig_domain_fields_1);
	cJSON* jsonxml_cdashig_domain_fields_2 = xml_cdashig_domain_fields_convertToJSON(xml_cdashig_domain_fields_2);
	printf("repeating xml_cdashig_domain_fields:\n%s\n", cJSON_Print(jsonxml_cdashig_domain_fields_2));
}

int main() {
  test_xml_cdashig_domain_fields(1);
  test_xml_cdashig_domain_fields(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_domain_fields_MAIN
#endif // xml_cdashig_domain_fields_TEST
