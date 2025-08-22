#ifndef xml_qrs_responsegroups_TEST
#define xml_qrs_responsegroups_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_qrs_responsegroups_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_qrs_responsegroups.h"
xml_qrs_responsegroups_t* instantiate_xml_qrs_responsegroups(int include_optional);

#include "test_qrs_responsegroups.c"


xml_qrs_responsegroups_t* instantiate_xml_qrs_responsegroups(int include_optional) {
  xml_qrs_responsegroups_t* xml_qrs_responsegroups = NULL;
  if (include_optional) {
    xml_qrs_responsegroups = xml_qrs_responsegroups_create(
       // false, not to have infinite recursion
      instantiate_qrs_responsegroups(0)
    );
  } else {
    xml_qrs_responsegroups = xml_qrs_responsegroups_create(
      NULL
    );
  }

  return xml_qrs_responsegroups;
}


#ifdef xml_qrs_responsegroups_MAIN

void test_xml_qrs_responsegroups(int include_optional) {
    xml_qrs_responsegroups_t* xml_qrs_responsegroups_1 = instantiate_xml_qrs_responsegroups(include_optional);

	cJSON* jsonxml_qrs_responsegroups_1 = xml_qrs_responsegroups_convertToJSON(xml_qrs_responsegroups_1);
	printf("xml_qrs_responsegroups :\n%s\n", cJSON_Print(jsonxml_qrs_responsegroups_1));
	xml_qrs_responsegroups_t* xml_qrs_responsegroups_2 = xml_qrs_responsegroups_parseFromJSON(jsonxml_qrs_responsegroups_1);
	cJSON* jsonxml_qrs_responsegroups_2 = xml_qrs_responsegroups_convertToJSON(xml_qrs_responsegroups_2);
	printf("repeating xml_qrs_responsegroups:\n%s\n", cJSON_Print(jsonxml_qrs_responsegroups_2));
}

int main() {
  test_xml_qrs_responsegroups(1);
  test_xml_qrs_responsegroups(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_qrs_responsegroups_MAIN
#endif // xml_qrs_responsegroups_TEST
