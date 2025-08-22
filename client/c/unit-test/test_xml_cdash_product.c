#ifndef xml_cdash_product_TEST
#define xml_cdash_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdash_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdash_product.h"
xml_cdash_product_t* instantiate_xml_cdash_product(int include_optional);

#include "test_cdash_product.c"


xml_cdash_product_t* instantiate_xml_cdash_product(int include_optional) {
  xml_cdash_product_t* xml_cdash_product = NULL;
  if (include_optional) {
    xml_cdash_product = xml_cdash_product_create(
       // false, not to have infinite recursion
      instantiate_cdash_product(0)
    );
  } else {
    xml_cdash_product = xml_cdash_product_create(
      NULL
    );
  }

  return xml_cdash_product;
}


#ifdef xml_cdash_product_MAIN

void test_xml_cdash_product(int include_optional) {
    xml_cdash_product_t* xml_cdash_product_1 = instantiate_xml_cdash_product(include_optional);

	cJSON* jsonxml_cdash_product_1 = xml_cdash_product_convertToJSON(xml_cdash_product_1);
	printf("xml_cdash_product :\n%s\n", cJSON_Print(jsonxml_cdash_product_1));
	xml_cdash_product_t* xml_cdash_product_2 = xml_cdash_product_parseFromJSON(jsonxml_cdash_product_1);
	cJSON* jsonxml_cdash_product_2 = xml_cdash_product_convertToJSON(xml_cdash_product_2);
	printf("repeating xml_cdash_product:\n%s\n", cJSON_Print(jsonxml_cdash_product_2));
}

int main() {
  test_xml_cdash_product(1);
  test_xml_cdash_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdash_product_MAIN
#endif // xml_cdash_product_TEST
