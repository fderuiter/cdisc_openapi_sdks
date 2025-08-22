#ifndef xml_cdashig_domain_TEST
#define xml_cdashig_domain_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_domain_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_domain.h"
xml_cdashig_domain_t* instantiate_xml_cdashig_domain(int include_optional);

#include "test_cdashig_domain.c"


xml_cdashig_domain_t* instantiate_xml_cdashig_domain(int include_optional) {
  xml_cdashig_domain_t* xml_cdashig_domain = NULL;
  if (include_optional) {
    xml_cdashig_domain = xml_cdashig_domain_create(
       // false, not to have infinite recursion
      instantiate_cdashig_domain(0)
    );
  } else {
    xml_cdashig_domain = xml_cdashig_domain_create(
      NULL
    );
  }

  return xml_cdashig_domain;
}


#ifdef xml_cdashig_domain_MAIN

void test_xml_cdashig_domain(int include_optional) {
    xml_cdashig_domain_t* xml_cdashig_domain_1 = instantiate_xml_cdashig_domain(include_optional);

	cJSON* jsonxml_cdashig_domain_1 = xml_cdashig_domain_convertToJSON(xml_cdashig_domain_1);
	printf("xml_cdashig_domain :\n%s\n", cJSON_Print(jsonxml_cdashig_domain_1));
	xml_cdashig_domain_t* xml_cdashig_domain_2 = xml_cdashig_domain_parseFromJSON(jsonxml_cdashig_domain_1);
	cJSON* jsonxml_cdashig_domain_2 = xml_cdashig_domain_convertToJSON(xml_cdashig_domain_2);
	printf("repeating xml_cdashig_domain:\n%s\n", cJSON_Print(jsonxml_cdashig_domain_2));
}

int main() {
  test_xml_cdashig_domain(1);
  test_xml_cdashig_domain(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_domain_MAIN
#endif // xml_cdashig_domain_TEST
