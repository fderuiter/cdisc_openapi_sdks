#ifndef xml_ct_term_TEST
#define xml_ct_term_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_ct_term_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_ct_term.h"
xml_ct_term_t* instantiate_xml_ct_term(int include_optional);

#include "test_ct_term.c"


xml_ct_term_t* instantiate_xml_ct_term(int include_optional) {
  xml_ct_term_t* xml_ct_term = NULL;
  if (include_optional) {
    xml_ct_term = xml_ct_term_create(
       // false, not to have infinite recursion
      instantiate_ct_term(0)
    );
  } else {
    xml_ct_term = xml_ct_term_create(
      NULL
    );
  }

  return xml_ct_term;
}


#ifdef xml_ct_term_MAIN

void test_xml_ct_term(int include_optional) {
    xml_ct_term_t* xml_ct_term_1 = instantiate_xml_ct_term(include_optional);

	cJSON* jsonxml_ct_term_1 = xml_ct_term_convertToJSON(xml_ct_term_1);
	printf("xml_ct_term :\n%s\n", cJSON_Print(jsonxml_ct_term_1));
	xml_ct_term_t* xml_ct_term_2 = xml_ct_term_parseFromJSON(jsonxml_ct_term_1);
	cJSON* jsonxml_ct_term_2 = xml_ct_term_convertToJSON(xml_ct_term_2);
	printf("repeating xml_ct_term:\n%s\n", cJSON_Print(jsonxml_ct_term_2));
}

int main() {
  test_xml_ct_term(1);
  test_xml_ct_term(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_ct_term_MAIN
#endif // xml_ct_term_TEST
