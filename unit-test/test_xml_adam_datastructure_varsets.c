#ifndef xml_adam_datastructure_varsets_TEST
#define xml_adam_datastructure_varsets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_datastructure_varsets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_datastructure_varsets.h"
xml_adam_datastructure_varsets_t* instantiate_xml_adam_datastructure_varsets(int include_optional);

#include "test_adam_datastructure_varsets.c"


xml_adam_datastructure_varsets_t* instantiate_xml_adam_datastructure_varsets(int include_optional) {
  xml_adam_datastructure_varsets_t* xml_adam_datastructure_varsets = NULL;
  if (include_optional) {
    xml_adam_datastructure_varsets = xml_adam_datastructure_varsets_create(
       // false, not to have infinite recursion
      instantiate_adam_datastructure_varsets(0)
    );
  } else {
    xml_adam_datastructure_varsets = xml_adam_datastructure_varsets_create(
      NULL
    );
  }

  return xml_adam_datastructure_varsets;
}


#ifdef xml_adam_datastructure_varsets_MAIN

void test_xml_adam_datastructure_varsets(int include_optional) {
    xml_adam_datastructure_varsets_t* xml_adam_datastructure_varsets_1 = instantiate_xml_adam_datastructure_varsets(include_optional);

	cJSON* jsonxml_adam_datastructure_varsets_1 = xml_adam_datastructure_varsets_convertToJSON(xml_adam_datastructure_varsets_1);
	printf("xml_adam_datastructure_varsets :\n%s\n", cJSON_Print(jsonxml_adam_datastructure_varsets_1));
	xml_adam_datastructure_varsets_t* xml_adam_datastructure_varsets_2 = xml_adam_datastructure_varsets_parseFromJSON(jsonxml_adam_datastructure_varsets_1);
	cJSON* jsonxml_adam_datastructure_varsets_2 = xml_adam_datastructure_varsets_convertToJSON(xml_adam_datastructure_varsets_2);
	printf("repeating xml_adam_datastructure_varsets:\n%s\n", cJSON_Print(jsonxml_adam_datastructure_varsets_2));
}

int main() {
  test_xml_adam_datastructure_varsets(1);
  test_xml_adam_datastructure_varsets(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_datastructure_varsets_MAIN
#endif // xml_adam_datastructure_varsets_TEST
