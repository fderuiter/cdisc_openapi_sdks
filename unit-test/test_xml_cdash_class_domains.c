#ifndef xml_cdash_class_domains_TEST
#define xml_cdash_class_domains_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdash_class_domains_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdash_class_domains.h"
xml_cdash_class_domains_t* instantiate_xml_cdash_class_domains(int include_optional);

#include "test_cdash_class_domains.c"


xml_cdash_class_domains_t* instantiate_xml_cdash_class_domains(int include_optional) {
  xml_cdash_class_domains_t* xml_cdash_class_domains = NULL;
  if (include_optional) {
    xml_cdash_class_domains = xml_cdash_class_domains_create(
       // false, not to have infinite recursion
      instantiate_cdash_class_domains(0)
    );
  } else {
    xml_cdash_class_domains = xml_cdash_class_domains_create(
      NULL
    );
  }

  return xml_cdash_class_domains;
}


#ifdef xml_cdash_class_domains_MAIN

void test_xml_cdash_class_domains(int include_optional) {
    xml_cdash_class_domains_t* xml_cdash_class_domains_1 = instantiate_xml_cdash_class_domains(include_optional);

	cJSON* jsonxml_cdash_class_domains_1 = xml_cdash_class_domains_convertToJSON(xml_cdash_class_domains_1);
	printf("xml_cdash_class_domains :\n%s\n", cJSON_Print(jsonxml_cdash_class_domains_1));
	xml_cdash_class_domains_t* xml_cdash_class_domains_2 = xml_cdash_class_domains_parseFromJSON(jsonxml_cdash_class_domains_1);
	cJSON* jsonxml_cdash_class_domains_2 = xml_cdash_class_domains_convertToJSON(xml_cdash_class_domains_2);
	printf("repeating xml_cdash_class_domains:\n%s\n", cJSON_Print(jsonxml_cdash_class_domains_2));
}

int main() {
  test_xml_cdash_class_domains(1);
  test_xml_cdash_class_domains(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdash_class_domains_MAIN
#endif // xml_cdash_class_domains_TEST
