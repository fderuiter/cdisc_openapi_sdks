#ifndef xml_sdtm_classes_TEST
#define xml_sdtm_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_classes.h"
xml_sdtm_classes_t* instantiate_xml_sdtm_classes(int include_optional);

#include "test_sdtm_classes.c"


xml_sdtm_classes_t* instantiate_xml_sdtm_classes(int include_optional) {
  xml_sdtm_classes_t* xml_sdtm_classes = NULL;
  if (include_optional) {
    xml_sdtm_classes = xml_sdtm_classes_create(
       // false, not to have infinite recursion
      instantiate_sdtm_classes(0)
    );
  } else {
    xml_sdtm_classes = xml_sdtm_classes_create(
      NULL
    );
  }

  return xml_sdtm_classes;
}


#ifdef xml_sdtm_classes_MAIN

void test_xml_sdtm_classes(int include_optional) {
    xml_sdtm_classes_t* xml_sdtm_classes_1 = instantiate_xml_sdtm_classes(include_optional);

	cJSON* jsonxml_sdtm_classes_1 = xml_sdtm_classes_convertToJSON(xml_sdtm_classes_1);
	printf("xml_sdtm_classes :\n%s\n", cJSON_Print(jsonxml_sdtm_classes_1));
	xml_sdtm_classes_t* xml_sdtm_classes_2 = xml_sdtm_classes_parseFromJSON(jsonxml_sdtm_classes_1);
	cJSON* jsonxml_sdtm_classes_2 = xml_sdtm_classes_convertToJSON(xml_sdtm_classes_2);
	printf("repeating xml_sdtm_classes:\n%s\n", cJSON_Print(jsonxml_sdtm_classes_2));
}

int main() {
  test_xml_sdtm_classes(1);
  test_xml_sdtm_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_classes_MAIN
#endif // xml_sdtm_classes_TEST
