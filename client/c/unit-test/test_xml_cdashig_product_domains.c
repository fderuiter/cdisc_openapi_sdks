#ifndef xml_cdashig_product_domains_TEST
#define xml_cdashig_product_domains_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdashig_product_domains_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdashig_product_domains.h"
xml_cdashig_product_domains_t* instantiate_xml_cdashig_product_domains(int include_optional);

#include "test_cdashig_product_domains.c"


xml_cdashig_product_domains_t* instantiate_xml_cdashig_product_domains(int include_optional) {
  xml_cdashig_product_domains_t* xml_cdashig_product_domains = NULL;
  if (include_optional) {
    xml_cdashig_product_domains = xml_cdashig_product_domains_create(
       // false, not to have infinite recursion
      instantiate_cdashig_product_domains(0)
    );
  } else {
    xml_cdashig_product_domains = xml_cdashig_product_domains_create(
      NULL
    );
  }

  return xml_cdashig_product_domains;
}


#ifdef xml_cdashig_product_domains_MAIN

void test_xml_cdashig_product_domains(int include_optional) {
    xml_cdashig_product_domains_t* xml_cdashig_product_domains_1 = instantiate_xml_cdashig_product_domains(include_optional);

	cJSON* jsonxml_cdashig_product_domains_1 = xml_cdashig_product_domains_convertToJSON(xml_cdashig_product_domains_1);
	printf("xml_cdashig_product_domains :\n%s\n", cJSON_Print(jsonxml_cdashig_product_domains_1));
	xml_cdashig_product_domains_t* xml_cdashig_product_domains_2 = xml_cdashig_product_domains_parseFromJSON(jsonxml_cdashig_product_domains_1);
	cJSON* jsonxml_cdashig_product_domains_2 = xml_cdashig_product_domains_convertToJSON(xml_cdashig_product_domains_2);
	printf("repeating xml_cdashig_product_domains:\n%s\n", cJSON_Print(jsonxml_cdashig_product_domains_2));
}

int main() {
  test_xml_cdashig_product_domains(1);
  test_xml_cdashig_product_domains(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdashig_product_domains_MAIN
#endif // xml_cdashig_product_domains_TEST
