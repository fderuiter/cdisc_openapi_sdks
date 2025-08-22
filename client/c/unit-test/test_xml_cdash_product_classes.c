#ifndef xml_cdash_product_classes_TEST
#define xml_cdash_product_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_cdash_product_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_cdash_product_classes.h"
xml_cdash_product_classes_t* instantiate_xml_cdash_product_classes(int include_optional);

#include "test_cdash_product_classes.c"


xml_cdash_product_classes_t* instantiate_xml_cdash_product_classes(int include_optional) {
  xml_cdash_product_classes_t* xml_cdash_product_classes = NULL;
  if (include_optional) {
    xml_cdash_product_classes = xml_cdash_product_classes_create(
       // false, not to have infinite recursion
      instantiate_cdash_product_classes(0)
    );
  } else {
    xml_cdash_product_classes = xml_cdash_product_classes_create(
      NULL
    );
  }

  return xml_cdash_product_classes;
}


#ifdef xml_cdash_product_classes_MAIN

void test_xml_cdash_product_classes(int include_optional) {
    xml_cdash_product_classes_t* xml_cdash_product_classes_1 = instantiate_xml_cdash_product_classes(include_optional);

	cJSON* jsonxml_cdash_product_classes_1 = xml_cdash_product_classes_convertToJSON(xml_cdash_product_classes_1);
	printf("xml_cdash_product_classes :\n%s\n", cJSON_Print(jsonxml_cdash_product_classes_1));
	xml_cdash_product_classes_t* xml_cdash_product_classes_2 = xml_cdash_product_classes_parseFromJSON(jsonxml_cdash_product_classes_1);
	cJSON* jsonxml_cdash_product_classes_2 = xml_cdash_product_classes_convertToJSON(xml_cdash_product_classes_2);
	printf("repeating xml_cdash_product_classes:\n%s\n", cJSON_Print(jsonxml_cdash_product_classes_2));
}

int main() {
  test_xml_cdash_product_classes(1);
  test_xml_cdash_product_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_cdash_product_classes_MAIN
#endif // xml_cdash_product_classes_TEST
