#ifndef xml_adam_variable_TEST
#define xml_adam_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_variable.h"
xml_adam_variable_t* instantiate_xml_adam_variable(int include_optional);

#include "test_adam_variable.c"


xml_adam_variable_t* instantiate_xml_adam_variable(int include_optional) {
  xml_adam_variable_t* xml_adam_variable = NULL;
  if (include_optional) {
    xml_adam_variable = xml_adam_variable_create(
       // false, not to have infinite recursion
      instantiate_adam_variable(0)
    );
  } else {
    xml_adam_variable = xml_adam_variable_create(
      NULL
    );
  }

  return xml_adam_variable;
}


#ifdef xml_adam_variable_MAIN

void test_xml_adam_variable(int include_optional) {
    xml_adam_variable_t* xml_adam_variable_1 = instantiate_xml_adam_variable(include_optional);

	cJSON* jsonxml_adam_variable_1 = xml_adam_variable_convertToJSON(xml_adam_variable_1);
	printf("xml_adam_variable :\n%s\n", cJSON_Print(jsonxml_adam_variable_1));
	xml_adam_variable_t* xml_adam_variable_2 = xml_adam_variable_parseFromJSON(jsonxml_adam_variable_1);
	cJSON* jsonxml_adam_variable_2 = xml_adam_variable_convertToJSON(xml_adam_variable_2);
	printf("repeating xml_adam_variable:\n%s\n", cJSON_Print(jsonxml_adam_variable_2));
}

int main() {
  test_xml_adam_variable(1);
  test_xml_adam_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_variable_MAIN
#endif // xml_adam_variable_TEST
