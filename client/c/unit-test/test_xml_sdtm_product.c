#ifndef xml_sdtm_product_TEST
#define xml_sdtm_product_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_product_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_product.h"
xml_sdtm_product_t* instantiate_xml_sdtm_product(int include_optional);

#include "test_sdtm_product.c"


xml_sdtm_product_t* instantiate_xml_sdtm_product(int include_optional) {
  xml_sdtm_product_t* xml_sdtm_product = NULL;
  if (include_optional) {
    xml_sdtm_product = xml_sdtm_product_create(
       // false, not to have infinite recursion
      instantiate_sdtm_product(0)
    );
  } else {
    xml_sdtm_product = xml_sdtm_product_create(
      NULL
    );
  }

  return xml_sdtm_product;
}


#ifdef xml_sdtm_product_MAIN

void test_xml_sdtm_product(int include_optional) {
    xml_sdtm_product_t* xml_sdtm_product_1 = instantiate_xml_sdtm_product(include_optional);

	cJSON* jsonxml_sdtm_product_1 = xml_sdtm_product_convertToJSON(xml_sdtm_product_1);
	printf("xml_sdtm_product :\n%s\n", cJSON_Print(jsonxml_sdtm_product_1));
	xml_sdtm_product_t* xml_sdtm_product_2 = xml_sdtm_product_parseFromJSON(jsonxml_sdtm_product_1);
	cJSON* jsonxml_sdtm_product_2 = xml_sdtm_product_convertToJSON(xml_sdtm_product_2);
	printf("repeating xml_sdtm_product:\n%s\n", cJSON_Print(jsonxml_sdtm_product_2));
}

int main() {
  test_xml_sdtm_product(1);
  test_xml_sdtm_product(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_product_MAIN
#endif // xml_sdtm_product_TEST
