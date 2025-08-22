#ifndef xml_adam_datastructure_TEST
#define xml_adam_datastructure_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_datastructure_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_datastructure.h"
xml_adam_datastructure_t* instantiate_xml_adam_datastructure(int include_optional);

#include "test_adam_datastructure.c"


xml_adam_datastructure_t* instantiate_xml_adam_datastructure(int include_optional) {
  xml_adam_datastructure_t* xml_adam_datastructure = NULL;
  if (include_optional) {
    xml_adam_datastructure = xml_adam_datastructure_create(
       // false, not to have infinite recursion
      instantiate_adam_datastructure(0)
    );
  } else {
    xml_adam_datastructure = xml_adam_datastructure_create(
      NULL
    );
  }

  return xml_adam_datastructure;
}


#ifdef xml_adam_datastructure_MAIN

void test_xml_adam_datastructure(int include_optional) {
    xml_adam_datastructure_t* xml_adam_datastructure_1 = instantiate_xml_adam_datastructure(include_optional);

	cJSON* jsonxml_adam_datastructure_1 = xml_adam_datastructure_convertToJSON(xml_adam_datastructure_1);
	printf("xml_adam_datastructure :\n%s\n", cJSON_Print(jsonxml_adam_datastructure_1));
	xml_adam_datastructure_t* xml_adam_datastructure_2 = xml_adam_datastructure_parseFromJSON(jsonxml_adam_datastructure_1);
	cJSON* jsonxml_adam_datastructure_2 = xml_adam_datastructure_convertToJSON(xml_adam_datastructure_2);
	printf("repeating xml_adam_datastructure:\n%s\n", cJSON_Print(jsonxml_adam_datastructure_2));
}

int main() {
  test_xml_adam_datastructure(1);
  test_xml_adam_datastructure(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_datastructure_MAIN
#endif // xml_adam_datastructure_TEST
