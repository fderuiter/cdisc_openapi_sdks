#ifndef xml_adam_varset_TEST
#define xml_adam_varset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_adam_varset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_adam_varset.h"
xml_adam_varset_t* instantiate_xml_adam_varset(int include_optional);

#include "test_adam_varset.c"


xml_adam_varset_t* instantiate_xml_adam_varset(int include_optional) {
  xml_adam_varset_t* xml_adam_varset = NULL;
  if (include_optional) {
    xml_adam_varset = xml_adam_varset_create(
       // false, not to have infinite recursion
      instantiate_adam_varset(0)
    );
  } else {
    xml_adam_varset = xml_adam_varset_create(
      NULL
    );
  }

  return xml_adam_varset;
}


#ifdef xml_adam_varset_MAIN

void test_xml_adam_varset(int include_optional) {
    xml_adam_varset_t* xml_adam_varset_1 = instantiate_xml_adam_varset(include_optional);

	cJSON* jsonxml_adam_varset_1 = xml_adam_varset_convertToJSON(xml_adam_varset_1);
	printf("xml_adam_varset :\n%s\n", cJSON_Print(jsonxml_adam_varset_1));
	xml_adam_varset_t* xml_adam_varset_2 = xml_adam_varset_parseFromJSON(jsonxml_adam_varset_1);
	cJSON* jsonxml_adam_varset_2 = xml_adam_varset_convertToJSON(xml_adam_varset_2);
	printf("repeating xml_adam_varset:\n%s\n", cJSON_Print(jsonxml_adam_varset_2));
}

int main() {
  test_xml_adam_varset(1);
  test_xml_adam_varset(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_adam_varset_MAIN
#endif // xml_adam_varset_TEST
