#ifndef xml_sendig_product_TEST
#define xml_sendig_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sendig_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sendig_product.h"
xml_sendig_product_t* instantiate_xml_sendig_product(int include_optional);

#include "test_sendig_product.c"


xml_sendig_product_t* instantiate_xml_sendig_product(int include_optional) {
  xml_sendig_product_t* xml_sendig_product = NULL;
  if (include_optional) {
    xml_sendig_product = xml_sendig_product_create(
       // false, not to have infinite recursion
      instantiate_sendig_product(0)
    );
  } else {
    xml_sendig_product = xml_sendig_product_create(
      NULL
    );
  }

  return xml_sendig_product;
}


#ifdef xml_sendig_product_MAIN

void test_xml_sendig_product(int include_optional) {
    xml_sendig_product_t* xml_sendig_product_1 = instantiate_xml_sendig_product(include_optional);

	cJSON* jsonxml_sendig_product_1 = xml_sendig_product_convertToJSON(xml_sendig_product_1);
	printf("xml_sendig_product :\n%s\n", cJSON_Print(jsonxml_sendig_product_1));
	xml_sendig_product_t* xml_sendig_product_2 = xml_sendig_product_parseFromJSON(jsonxml_sendig_product_1);
	cJSON* jsonxml_sendig_product_2 = xml_sendig_product_convertToJSON(xml_sendig_product_2);
	printf("repeating xml_sendig_product:\n%s\n", cJSON_Print(jsonxml_sendig_product_2));
}

int main() {
  test_xml_sendig_product(1);
  test_xml_sendig_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sendig_product_MAIN
#endif // xml_sendig_product_TEST
