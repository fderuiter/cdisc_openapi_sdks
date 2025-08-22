#ifndef xml_qrs_item_TEST
#define xml_qrs_item_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_qrs_item_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_qrs_item.h"
xml_qrs_item_t* instantiate_xml_qrs_item(int include_optional);

#include "test_qrs_item.c"


xml_qrs_item_t* instantiate_xml_qrs_item(int include_optional) {
  xml_qrs_item_t* xml_qrs_item = NULL;
  if (include_optional) {
    xml_qrs_item = xml_qrs_item_create(
       // false, not to have infinite recursion
      instantiate_qrs_item(0)
    );
  } else {
    xml_qrs_item = xml_qrs_item_create(
      NULL
    );
  }

  return xml_qrs_item;
}


#ifdef xml_qrs_item_MAIN

void test_xml_qrs_item(int include_optional) {
    xml_qrs_item_t* xml_qrs_item_1 = instantiate_xml_qrs_item(include_optional);

	cJSON* jsonxml_qrs_item_1 = xml_qrs_item_convertToJSON(xml_qrs_item_1);
	printf("xml_qrs_item :\n%s\n", cJSON_Print(jsonxml_qrs_item_1));
	xml_qrs_item_t* xml_qrs_item_2 = xml_qrs_item_parseFromJSON(jsonxml_qrs_item_1);
	cJSON* jsonxml_qrs_item_2 = xml_qrs_item_convertToJSON(xml_qrs_item_2);
	printf("repeating xml_qrs_item:\n%s\n", cJSON_Print(jsonxml_qrs_item_2));
}

int main() {
  test_xml_qrs_item(1);
  test_xml_qrs_item(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_qrs_item_MAIN
#endif // xml_qrs_item_TEST
