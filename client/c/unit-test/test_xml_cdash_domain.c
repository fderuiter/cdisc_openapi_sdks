#ifndef xml_cdash_domain_TEST
#define xml_cdash_domain_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdash_domain_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdash_domain.h"
xml_cdash_domain_t* instantiate_xml_cdash_domain(int include_optional);

#include "test_cdash_domain.c"


xml_cdash_domain_t* instantiate_xml_cdash_domain(int include_optional) {
  xml_cdash_domain_t* xml_cdash_domain = NULL;
  if (include_optional) {
    xml_cdash_domain = xml_cdash_domain_create(
       // false, not to have infinite recursion
      instantiate_cdash_domain(0)
    );
  } else {
    xml_cdash_domain = xml_cdash_domain_create(
      NULL
    );
  }

  return xml_cdash_domain;
}


#ifdef xml_cdash_domain_MAIN

void test_xml_cdash_domain(int include_optional) {
    xml_cdash_domain_t* xml_cdash_domain_1 = instantiate_xml_cdash_domain(include_optional);

	cJSON* jsonxml_cdash_domain_1 = xml_cdash_domain_convertToJSON(xml_cdash_domain_1);
	printf("xml_cdash_domain :\n%s\n", cJSON_Print(jsonxml_cdash_domain_1));
	xml_cdash_domain_t* xml_cdash_domain_2 = xml_cdash_domain_parseFromJSON(jsonxml_cdash_domain_1);
	cJSON* jsonxml_cdash_domain_2 = xml_cdash_domain_convertToJSON(xml_cdash_domain_2);
	printf("repeating xml_cdash_domain:\n%s\n", cJSON_Print(jsonxml_cdash_domain_2));
}

int main() {
  test_xml_cdash_domain(1);
  test_xml_cdash_domain(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdash_domain_MAIN
#endif // xml_cdash_domain_TEST
