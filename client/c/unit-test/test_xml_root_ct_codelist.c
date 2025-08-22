#ifndef xml_root_ct_codelist_TEST
#define xml_root_ct_codelist_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_root_ct_codelist_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_root_ct_codelist.h"
xml_root_ct_codelist_t* instantiate_xml_root_ct_codelist(int include_optional);

#include "test_root_ct_codelist.c"


xml_root_ct_codelist_t* instantiate_xml_root_ct_codelist(int include_optional) {
  xml_root_ct_codelist_t* xml_root_ct_codelist = NULL;
  if (include_optional) {
    xml_root_ct_codelist = xml_root_ct_codelist_create(
       // false, not to have infinite recursion
      instantiate_root_ct_codelist(0)
    );
  } else {
    xml_root_ct_codelist = xml_root_ct_codelist_create(
      NULL
    );
  }

  return xml_root_ct_codelist;
}


#ifdef xml_root_ct_codelist_MAIN

void test_xml_root_ct_codelist(int include_optional) {
    xml_root_ct_codelist_t* xml_root_ct_codelist_1 = instantiate_xml_root_ct_codelist(include_optional);

	cJSON* jsonxml_root_ct_codelist_1 = xml_root_ct_codelist_convertToJSON(xml_root_ct_codelist_1);
	printf("xml_root_ct_codelist :\n%s\n", cJSON_Print(jsonxml_root_ct_codelist_1));
	xml_root_ct_codelist_t* xml_root_ct_codelist_2 = xml_root_ct_codelist_parseFromJSON(jsonxml_root_ct_codelist_1);
	cJSON* jsonxml_root_ct_codelist_2 = xml_root_ct_codelist_convertToJSON(xml_root_ct_codelist_2);
	printf("repeating xml_root_ct_codelist:\n%s\n", cJSON_Print(jsonxml_root_ct_codelist_2));
}

int main() {
  test_xml_root_ct_codelist(1);
  test_xml_root_ct_codelist(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_root_ct_codelist_MAIN
#endif // xml_root_ct_codelist_TEST
