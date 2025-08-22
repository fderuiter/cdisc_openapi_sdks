#ifndef xml_qrs_product_TEST
#define xml_qrs_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_qrs_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_qrs_product.h"
xml_qrs_product_t* instantiate_xml_qrs_product(int include_optional);

#include "test_qrs_product.c"


xml_qrs_product_t* instantiate_xml_qrs_product(int include_optional) {
  xml_qrs_product_t* xml_qrs_product = NULL;
  if (include_optional) {
    xml_qrs_product = xml_qrs_product_create(
       // false, not to have infinite recursion
      instantiate_qrs_product(0)
    );
  } else {
    xml_qrs_product = xml_qrs_product_create(
      NULL
    );
  }

  return xml_qrs_product;
}


#ifdef xml_qrs_product_MAIN

void test_xml_qrs_product(int include_optional) {
    xml_qrs_product_t* xml_qrs_product_1 = instantiate_xml_qrs_product(include_optional);

	cJSON* jsonxml_qrs_product_1 = xml_qrs_product_convertToJSON(xml_qrs_product_1);
	printf("xml_qrs_product :\n%s\n", cJSON_Print(jsonxml_qrs_product_1));
	xml_qrs_product_t* xml_qrs_product_2 = xml_qrs_product_parseFromJSON(jsonxml_qrs_product_1);
	cJSON* jsonxml_qrs_product_2 = xml_qrs_product_convertToJSON(xml_qrs_product_2);
	printf("repeating xml_qrs_product:\n%s\n", cJSON_Print(jsonxml_qrs_product_2));
}

int main() {
  test_xml_qrs_product(1);
  test_xml_qrs_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_qrs_product_MAIN
#endif // xml_qrs_product_TEST
