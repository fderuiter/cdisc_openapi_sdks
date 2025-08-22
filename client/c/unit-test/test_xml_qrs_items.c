#ifndef xml_qrs_items_TEST
#define xml_qrs_items_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_qrs_items_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_qrs_items.h"
xml_qrs_items_t* instantiate_xml_qrs_items(int include_optional);

#include "test_qrs_items.c"


xml_qrs_items_t* instantiate_xml_qrs_items(int include_optional) {
  xml_qrs_items_t* xml_qrs_items = NULL;
  if (include_optional) {
    xml_qrs_items = xml_qrs_items_create(
       // false, not to have infinite recursion
      instantiate_qrs_items(0)
    );
  } else {
    xml_qrs_items = xml_qrs_items_create(
      NULL
    );
  }

  return xml_qrs_items;
}


#ifdef xml_qrs_items_MAIN

void test_xml_qrs_items(int include_optional) {
    xml_qrs_items_t* xml_qrs_items_1 = instantiate_xml_qrs_items(include_optional);

	cJSON* jsonxml_qrs_items_1 = xml_qrs_items_convertToJSON(xml_qrs_items_1);
	printf("xml_qrs_items :\n%s\n", cJSON_Print(jsonxml_qrs_items_1));
	xml_qrs_items_t* xml_qrs_items_2 = xml_qrs_items_parseFromJSON(jsonxml_qrs_items_1);
	cJSON* jsonxml_qrs_items_2 = xml_qrs_items_convertToJSON(xml_qrs_items_2);
	printf("repeating xml_qrs_items:\n%s\n", cJSON_Print(jsonxml_qrs_items_2));
}

int main() {
  test_xml_qrs_items(1);
  test_xml_qrs_items(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_qrs_items_MAIN
#endif // xml_qrs_items_TEST
