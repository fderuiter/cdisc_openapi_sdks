#ifndef xml_adam_product_datastructures_TEST
#define xml_adam_product_datastructures_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_product_datastructures_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_product_datastructures.h"
xml_adam_product_datastructures_t* instantiate_xml_adam_product_datastructures(int include_optional);

#include "test_adam_product_datastructures.c"


xml_adam_product_datastructures_t* instantiate_xml_adam_product_datastructures(int include_optional) {
  xml_adam_product_datastructures_t* xml_adam_product_datastructures = NULL;
  if (include_optional) {
    xml_adam_product_datastructures = xml_adam_product_datastructures_create(
       // false, not to have infinite recursion
      instantiate_adam_product_datastructures(0)
    );
  } else {
    xml_adam_product_datastructures = xml_adam_product_datastructures_create(
      NULL
    );
  }

  return xml_adam_product_datastructures;
}


#ifdef xml_adam_product_datastructures_MAIN

void test_xml_adam_product_datastructures(int include_optional) {
    xml_adam_product_datastructures_t* xml_adam_product_datastructures_1 = instantiate_xml_adam_product_datastructures(include_optional);

	cJSON* jsonxml_adam_product_datastructures_1 = xml_adam_product_datastructures_convertToJSON(xml_adam_product_datastructures_1);
	printf("xml_adam_product_datastructures :\n%s\n", cJSON_Print(jsonxml_adam_product_datastructures_1));
	xml_adam_product_datastructures_t* xml_adam_product_datastructures_2 = xml_adam_product_datastructures_parseFromJSON(jsonxml_adam_product_datastructures_1);
	cJSON* jsonxml_adam_product_datastructures_2 = xml_adam_product_datastructures_convertToJSON(xml_adam_product_datastructures_2);
	printf("repeating xml_adam_product_datastructures:\n%s\n", cJSON_Print(jsonxml_adam_product_datastructures_2));
}

int main() {
  test_xml_adam_product_datastructures(1);
  test_xml_adam_product_datastructures(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_product_datastructures_MAIN
#endif // xml_adam_product_datastructures_TEST
