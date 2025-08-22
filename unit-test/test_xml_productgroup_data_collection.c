#ifndef xml_productgroup_data_collection_TEST
#define xml_productgroup_data_collection_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_productgroup_data_collection_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_productgroup_data_collection.h"
xml_productgroup_data_collection_t* instantiate_xml_productgroup_data_collection(int include_optional);

#include "test_productgroup_data_collection.c"


xml_productgroup_data_collection_t* instantiate_xml_productgroup_data_collection(int include_optional) {
  xml_productgroup_data_collection_t* xml_productgroup_data_collection = NULL;
  if (include_optional) {
    xml_productgroup_data_collection = xml_productgroup_data_collection_create(
       // false, not to have infinite recursion
      instantiate_productgroup_data_collection(0)
    );
  } else {
    xml_productgroup_data_collection = xml_productgroup_data_collection_create(
      NULL
    );
  }

  return xml_productgroup_data_collection;
}


#ifdef xml_productgroup_data_collection_MAIN

void test_xml_productgroup_data_collection(int include_optional) {
    xml_productgroup_data_collection_t* xml_productgroup_data_collection_1 = instantiate_xml_productgroup_data_collection(include_optional);

	cJSON* jsonxml_productgroup_data_collection_1 = xml_productgroup_data_collection_convertToJSON(xml_productgroup_data_collection_1);
	printf("xml_productgroup_data_collection :\n%s\n", cJSON_Print(jsonxml_productgroup_data_collection_1));
	xml_productgroup_data_collection_t* xml_productgroup_data_collection_2 = xml_productgroup_data_collection_parseFromJSON(jsonxml_productgroup_data_collection_1);
	cJSON* jsonxml_productgroup_data_collection_2 = xml_productgroup_data_collection_convertToJSON(xml_productgroup_data_collection_2);
	printf("repeating xml_productgroup_data_collection:\n%s\n", cJSON_Print(jsonxml_productgroup_data_collection_2));
}

int main() {
  test_xml_productgroup_data_collection(1);
  test_xml_productgroup_data_collection(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_productgroup_data_collection_MAIN
#endif // xml_productgroup_data_collection_TEST
