#ifndef xml_qrs_responsegroup_TEST
#define xml_qrs_responsegroup_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_qrs_responsegroup_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_qrs_responsegroup.h"
xml_qrs_responsegroup_t* instantiate_xml_qrs_responsegroup(int include_optional);

#include "test_qrs_responsegroup.c"


xml_qrs_responsegroup_t* instantiate_xml_qrs_responsegroup(int include_optional) {
  xml_qrs_responsegroup_t* xml_qrs_responsegroup = NULL;
  if (include_optional) {
    xml_qrs_responsegroup = xml_qrs_responsegroup_create(
       // false, not to have infinite recursion
      instantiate_qrs_responsegroup(0)
    );
  } else {
    xml_qrs_responsegroup = xml_qrs_responsegroup_create(
      NULL
    );
  }

  return xml_qrs_responsegroup;
}


#ifdef xml_qrs_responsegroup_MAIN

void test_xml_qrs_responsegroup(int include_optional) {
    xml_qrs_responsegroup_t* xml_qrs_responsegroup_1 = instantiate_xml_qrs_responsegroup(include_optional);

	cJSON* jsonxml_qrs_responsegroup_1 = xml_qrs_responsegroup_convertToJSON(xml_qrs_responsegroup_1);
	printf("xml_qrs_responsegroup :\n%s\n", cJSON_Print(jsonxml_qrs_responsegroup_1));
	xml_qrs_responsegroup_t* xml_qrs_responsegroup_2 = xml_qrs_responsegroup_parseFromJSON(jsonxml_qrs_responsegroup_1);
	cJSON* jsonxml_qrs_responsegroup_2 = xml_qrs_responsegroup_convertToJSON(xml_qrs_responsegroup_2);
	printf("repeating xml_qrs_responsegroup:\n%s\n", cJSON_Print(jsonxml_qrs_responsegroup_2));
}

int main() {
  test_xml_qrs_responsegroup(1);
  test_xml_qrs_responsegroup(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_qrs_responsegroup_MAIN
#endif // xml_qrs_responsegroup_TEST
