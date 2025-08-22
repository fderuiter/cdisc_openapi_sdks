#ifndef xml_adam_datastructure_variables_TEST
#define xml_adam_datastructure_variables_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_datastructure_variables_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_datastructure_variables.h"
xml_adam_datastructure_variables_t* instantiate_xml_adam_datastructure_variables(int include_optional);

#include "test_adam_datastructure_variables.c"


xml_adam_datastructure_variables_t* instantiate_xml_adam_datastructure_variables(int include_optional) {
  xml_adam_datastructure_variables_t* xml_adam_datastructure_variables = NULL;
  if (include_optional) {
    xml_adam_datastructure_variables = xml_adam_datastructure_variables_create(
       // false, not to have infinite recursion
      instantiate_adam_datastructure_variables(0)
    );
  } else {
    xml_adam_datastructure_variables = xml_adam_datastructure_variables_create(
      NULL
    );
  }

  return xml_adam_datastructure_variables;
}


#ifdef xml_adam_datastructure_variables_MAIN

void test_xml_adam_datastructure_variables(int include_optional) {
    xml_adam_datastructure_variables_t* xml_adam_datastructure_variables_1 = instantiate_xml_adam_datastructure_variables(include_optional);

	cJSON* jsonxml_adam_datastructure_variables_1 = xml_adam_datastructure_variables_convertToJSON(xml_adam_datastructure_variables_1);
	printf("xml_adam_datastructure_variables :\n%s\n", cJSON_Print(jsonxml_adam_datastructure_variables_1));
	xml_adam_datastructure_variables_t* xml_adam_datastructure_variables_2 = xml_adam_datastructure_variables_parseFromJSON(jsonxml_adam_datastructure_variables_1);
	cJSON* jsonxml_adam_datastructure_variables_2 = xml_adam_datastructure_variables_convertToJSON(xml_adam_datastructure_variables_2);
	printf("repeating xml_adam_datastructure_variables:\n%s\n", cJSON_Print(jsonxml_adam_datastructure_variables_2));
}

int main() {
  test_xml_adam_datastructure_variables(1);
  test_xml_adam_datastructure_variables(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_datastructure_variables_MAIN
#endif // xml_adam_datastructure_variables_TEST
