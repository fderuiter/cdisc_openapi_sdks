#ifndef xml_ct_codelist_terms_TEST
#define xml_ct_codelist_terms_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_ct_codelist_terms_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_ct_codelist_terms.h"
xml_ct_codelist_terms_t* instantiate_xml_ct_codelist_terms(int include_optional);

#include "test_ct_codelist_terms.c"


xml_ct_codelist_terms_t* instantiate_xml_ct_codelist_terms(int include_optional) {
  xml_ct_codelist_terms_t* xml_ct_codelist_terms = NULL;
  if (include_optional) {
    xml_ct_codelist_terms = xml_ct_codelist_terms_create(
       // false, not to have infinite recursion
      instantiate_ct_codelist_terms(0)
    );
  } else {
    xml_ct_codelist_terms = xml_ct_codelist_terms_create(
      NULL
    );
  }

  return xml_ct_codelist_terms;
}


#ifdef xml_ct_codelist_terms_MAIN

void test_xml_ct_codelist_terms(int include_optional) {
    xml_ct_codelist_terms_t* xml_ct_codelist_terms_1 = instantiate_xml_ct_codelist_terms(include_optional);

	cJSON* jsonxml_ct_codelist_terms_1 = xml_ct_codelist_terms_convertToJSON(xml_ct_codelist_terms_1);
	printf("xml_ct_codelist_terms :\n%s\n", cJSON_Print(jsonxml_ct_codelist_terms_1));
	xml_ct_codelist_terms_t* xml_ct_codelist_terms_2 = xml_ct_codelist_terms_parseFromJSON(jsonxml_ct_codelist_terms_1);
	cJSON* jsonxml_ct_codelist_terms_2 = xml_ct_codelist_terms_convertToJSON(xml_ct_codelist_terms_2);
	printf("repeating xml_ct_codelist_terms:\n%s\n", cJSON_Print(jsonxml_ct_codelist_terms_2));
}

int main() {
  test_xml_ct_codelist_terms(1);
  test_xml_ct_codelist_terms(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_ct_codelist_terms_MAIN
#endif // xml_ct_codelist_terms_TEST
