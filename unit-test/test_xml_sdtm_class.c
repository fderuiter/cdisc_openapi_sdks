#ifndef xml_sdtm_class_TEST
#define xml_sdtm_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_class.h"
xml_sdtm_class_t* instantiate_xml_sdtm_class(int include_optional);

#include "test_sdtm_class.c"


xml_sdtm_class_t* instantiate_xml_sdtm_class(int include_optional) {
  xml_sdtm_class_t* xml_sdtm_class = NULL;
  if (include_optional) {
    xml_sdtm_class = xml_sdtm_class_create(
       // false, not to have infinite recursion
      instantiate_sdtm_class(0)
    );
  } else {
    xml_sdtm_class = xml_sdtm_class_create(
      NULL
    );
  }

  return xml_sdtm_class;
}


#ifdef xml_sdtm_class_MAIN

void test_xml_sdtm_class(int include_optional) {
    xml_sdtm_class_t* xml_sdtm_class_1 = instantiate_xml_sdtm_class(include_optional);

	cJSON* jsonxml_sdtm_class_1 = xml_sdtm_class_convertToJSON(xml_sdtm_class_1);
	printf("xml_sdtm_class :\n%s\n", cJSON_Print(jsonxml_sdtm_class_1));
	xml_sdtm_class_t* xml_sdtm_class_2 = xml_sdtm_class_parseFromJSON(jsonxml_sdtm_class_1);
	cJSON* jsonxml_sdtm_class_2 = xml_sdtm_class_convertToJSON(xml_sdtm_class_2);
	printf("repeating xml_sdtm_class:\n%s\n", cJSON_Print(jsonxml_sdtm_class_2));
}

int main() {
  test_xml_sdtm_class(1);
  test_xml_sdtm_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_class_MAIN
#endif // xml_sdtm_class_TEST
