#ifndef xml_ct_codelist_TEST
#define xml_ct_codelist_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_ct_codelist_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_ct_codelist.h"
xml_ct_codelist_t* instantiate_xml_ct_codelist(int include_optional);

#include "test_ct_codelist.c"


xml_ct_codelist_t* instantiate_xml_ct_codelist(int include_optional) {
  xml_ct_codelist_t* xml_ct_codelist = NULL;
  if (include_optional) {
    xml_ct_codelist = xml_ct_codelist_create(
       // false, not to have infinite recursion
      instantiate_ct_codelist(0)
    );
  } else {
    xml_ct_codelist = xml_ct_codelist_create(
      NULL
    );
  }

  return xml_ct_codelist;
}


#ifdef xml_ct_codelist_MAIN

void test_xml_ct_codelist(int include_optional) {
    xml_ct_codelist_t* xml_ct_codelist_1 = instantiate_xml_ct_codelist(include_optional);

	cJSON* jsonxml_ct_codelist_1 = xml_ct_codelist_convertToJSON(xml_ct_codelist_1);
	printf("xml_ct_codelist :\n%s\n", cJSON_Print(jsonxml_ct_codelist_1));
	xml_ct_codelist_t* xml_ct_codelist_2 = xml_ct_codelist_parseFromJSON(jsonxml_ct_codelist_1);
	cJSON* jsonxml_ct_codelist_2 = xml_ct_codelist_convertToJSON(xml_ct_codelist_2);
	printf("repeating xml_ct_codelist:\n%s\n", cJSON_Print(jsonxml_ct_codelist_2));
}

int main() {
  test_xml_ct_codelist(1);
  test_xml_ct_codelist(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_ct_codelist_MAIN
#endif // xml_ct_codelist_TEST
