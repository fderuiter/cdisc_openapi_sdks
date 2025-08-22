#ifndef xml_products_TEST
#define xml_products_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_products_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_products.h"
xml_products_t* instantiate_xml_products(int include_optional);

#include "test_products.c"


xml_products_t* instantiate_xml_products(int include_optional) {
  xml_products_t* xml_products = NULL;
  if (include_optional) {
    xml_products = xml_products_create(
       // false, not to have infinite recursion
      instantiate_products(0)
    );
  } else {
    xml_products = xml_products_create(
      NULL
    );
  }

  return xml_products;
}


#ifdef xml_products_MAIN

void test_xml_products(int include_optional) {
    xml_products_t* xml_products_1 = instantiate_xml_products(include_optional);

	cJSON* jsonxml_products_1 = xml_products_convertToJSON(xml_products_1);
	printf("xml_products :\n%s\n", cJSON_Print(jsonxml_products_1));
	xml_products_t* xml_products_2 = xml_products_parseFromJSON(jsonxml_products_1);
	cJSON* jsonxml_products_2 = xml_products_convertToJSON(xml_products_2);
	printf("repeating xml_products:\n%s\n", cJSON_Print(jsonxml_products_2));
}

int main() {
  test_xml_products(1);
  test_xml_products(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_products_MAIN
#endif // xml_products_TEST
