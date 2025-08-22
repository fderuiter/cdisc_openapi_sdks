#ifndef xml_sdtm_dataset_variable_TEST
#define xml_sdtm_dataset_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_dataset_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_dataset_variable.h"
xml_sdtm_dataset_variable_t* instantiate_xml_sdtm_dataset_variable(int include_optional);

#include "test_sdtm_dataset_variable.c"


xml_sdtm_dataset_variable_t* instantiate_xml_sdtm_dataset_variable(int include_optional) {
  xml_sdtm_dataset_variable_t* xml_sdtm_dataset_variable = NULL;
  if (include_optional) {
    xml_sdtm_dataset_variable = xml_sdtm_dataset_variable_create(
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variable(0)
    );
  } else {
    xml_sdtm_dataset_variable = xml_sdtm_dataset_variable_create(
      NULL
    );
  }

  return xml_sdtm_dataset_variable;
}


#ifdef xml_sdtm_dataset_variable_MAIN

void test_xml_sdtm_dataset_variable(int include_optional) {
    xml_sdtm_dataset_variable_t* xml_sdtm_dataset_variable_1 = instantiate_xml_sdtm_dataset_variable(include_optional);

	cJSON* jsonxml_sdtm_dataset_variable_1 = xml_sdtm_dataset_variable_convertToJSON(xml_sdtm_dataset_variable_1);
	printf("xml_sdtm_dataset_variable :\n%s\n", cJSON_Print(jsonxml_sdtm_dataset_variable_1));
	xml_sdtm_dataset_variable_t* xml_sdtm_dataset_variable_2 = xml_sdtm_dataset_variable_parseFromJSON(jsonxml_sdtm_dataset_variable_1);
	cJSON* jsonxml_sdtm_dataset_variable_2 = xml_sdtm_dataset_variable_convertToJSON(xml_sdtm_dataset_variable_2);
	printf("repeating xml_sdtm_dataset_variable:\n%s\n", cJSON_Print(jsonxml_sdtm_dataset_variable_2));
}

int main() {
  test_xml_sdtm_dataset_variable(1);
  test_xml_sdtm_dataset_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_dataset_variable_MAIN
#endif // xml_sdtm_dataset_variable_TEST
