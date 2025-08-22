#ifndef xml_sdtmig_classes_TEST
#define xml_sdtmig_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtmig_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtmig_classes.h"
xml_sdtmig_classes_t* instantiate_xml_sdtmig_classes(int include_optional);

#include "test_sdtmig_classes.c"


xml_sdtmig_classes_t* instantiate_xml_sdtmig_classes(int include_optional) {
  xml_sdtmig_classes_t* xml_sdtmig_classes = NULL;
  if (include_optional) {
    xml_sdtmig_classes = xml_sdtmig_classes_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_classes(0)
    );
  } else {
    xml_sdtmig_classes = xml_sdtmig_classes_create(
      NULL
    );
  }

  return xml_sdtmig_classes;
}


#ifdef xml_sdtmig_classes_MAIN

void test_xml_sdtmig_classes(int include_optional) {
    xml_sdtmig_classes_t* xml_sdtmig_classes_1 = instantiate_xml_sdtmig_classes(include_optional);

	cJSON* jsonxml_sdtmig_classes_1 = xml_sdtmig_classes_convertToJSON(xml_sdtmig_classes_1);
	printf("xml_sdtmig_classes :\n%s\n", cJSON_Print(jsonxml_sdtmig_classes_1));
	xml_sdtmig_classes_t* xml_sdtmig_classes_2 = xml_sdtmig_classes_parseFromJSON(jsonxml_sdtmig_classes_1);
	cJSON* jsonxml_sdtmig_classes_2 = xml_sdtmig_classes_convertToJSON(xml_sdtmig_classes_2);
	printf("repeating xml_sdtmig_classes:\n%s\n", cJSON_Print(jsonxml_sdtmig_classes_2));
}

int main() {
  test_xml_sdtmig_classes(1);
  test_xml_sdtmig_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtmig_classes_MAIN
#endif // xml_sdtmig_classes_TEST
