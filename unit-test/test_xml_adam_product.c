#ifndef xml_adam_product_TEST
#define xml_adam_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_product.h"
xml_adam_product_t* instantiate_xml_adam_product(int include_optional);

#include "test_adam_product.c"


xml_adam_product_t* instantiate_xml_adam_product(int include_optional) {
  xml_adam_product_t* xml_adam_product = NULL;
  if (include_optional) {
    xml_adam_product = xml_adam_product_create(
       // false, not to have infinite recursion
      instantiate_adam_product(0)
    );
  } else {
    xml_adam_product = xml_adam_product_create(
      NULL
    );
  }

  return xml_adam_product;
}


#ifdef xml_adam_product_MAIN

void test_xml_adam_product(int include_optional) {
    xml_adam_product_t* xml_adam_product_1 = instantiate_xml_adam_product(include_optional);

	cJSON* jsonxml_adam_product_1 = xml_adam_product_convertToJSON(xml_adam_product_1);
	printf("xml_adam_product :\n%s\n", cJSON_Print(jsonxml_adam_product_1));
	xml_adam_product_t* xml_adam_product_2 = xml_adam_product_parseFromJSON(jsonxml_adam_product_1);
	cJSON* jsonxml_adam_product_2 = xml_adam_product_convertToJSON(xml_adam_product_2);
	printf("repeating xml_adam_product:\n%s\n", cJSON_Print(jsonxml_adam_product_2));
}

int main() {
  test_xml_adam_product(1);
  test_xml_adam_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_product_MAIN
#endif // xml_adam_product_TEST
