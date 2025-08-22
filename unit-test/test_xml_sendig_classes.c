#ifndef xml_sendig_classes_TEST
#define xml_sendig_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sendig_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sendig_classes.h"
xml_sendig_classes_t* instantiate_xml_sendig_classes(int include_optional);

#include "test_sendig_classes.c"


xml_sendig_classes_t* instantiate_xml_sendig_classes(int include_optional) {
  xml_sendig_classes_t* xml_sendig_classes = NULL;
  if (include_optional) {
    xml_sendig_classes = xml_sendig_classes_create(
       // false, not to have infinite recursion
      instantiate_sendig_classes(0)
    );
  } else {
    xml_sendig_classes = xml_sendig_classes_create(
      NULL
    );
  }

  return xml_sendig_classes;
}


#ifdef xml_sendig_classes_MAIN

void test_xml_sendig_classes(int include_optional) {
    xml_sendig_classes_t* xml_sendig_classes_1 = instantiate_xml_sendig_classes(include_optional);

	cJSON* jsonxml_sendig_classes_1 = xml_sendig_classes_convertToJSON(xml_sendig_classes_1);
	printf("xml_sendig_classes :\n%s\n", cJSON_Print(jsonxml_sendig_classes_1));
	xml_sendig_classes_t* xml_sendig_classes_2 = xml_sendig_classes_parseFromJSON(jsonxml_sendig_classes_1);
	cJSON* jsonxml_sendig_classes_2 = xml_sendig_classes_convertToJSON(xml_sendig_classes_2);
	printf("repeating xml_sendig_classes:\n%s\n", cJSON_Print(jsonxml_sendig_classes_2));
}

int main() {
  test_xml_sendig_classes(1);
  test_xml_sendig_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sendig_classes_MAIN
#endif // xml_sendig_classes_TEST
