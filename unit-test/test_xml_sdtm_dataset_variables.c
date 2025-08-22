#ifndef xml_sdtm_dataset_variables_TEST
#define xml_sdtm_dataset_variables_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_dataset_variables_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_dataset_variables.h"
xml_sdtm_dataset_variables_t* instantiate_xml_sdtm_dataset_variables(int include_optional);

#include "test_sdtm_dataset_variables.c"


xml_sdtm_dataset_variables_t* instantiate_xml_sdtm_dataset_variables(int include_optional) {
  xml_sdtm_dataset_variables_t* xml_sdtm_dataset_variables = NULL;
  if (include_optional) {
    xml_sdtm_dataset_variables = xml_sdtm_dataset_variables_create(
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variables(0)
    );
  } else {
    xml_sdtm_dataset_variables = xml_sdtm_dataset_variables_create(
      NULL
    );
  }

  return xml_sdtm_dataset_variables;
}


#ifdef xml_sdtm_dataset_variables_MAIN

void test_xml_sdtm_dataset_variables(int include_optional) {
    xml_sdtm_dataset_variables_t* xml_sdtm_dataset_variables_1 = instantiate_xml_sdtm_dataset_variables(include_optional);

	cJSON* jsonxml_sdtm_dataset_variables_1 = xml_sdtm_dataset_variables_convertToJSON(xml_sdtm_dataset_variables_1);
	printf("xml_sdtm_dataset_variables :\n%s\n", cJSON_Print(jsonxml_sdtm_dataset_variables_1));
	xml_sdtm_dataset_variables_t* xml_sdtm_dataset_variables_2 = xml_sdtm_dataset_variables_parseFromJSON(jsonxml_sdtm_dataset_variables_1);
	cJSON* jsonxml_sdtm_dataset_variables_2 = xml_sdtm_dataset_variables_convertToJSON(xml_sdtm_dataset_variables_2);
	printf("repeating xml_sdtm_dataset_variables:\n%s\n", cJSON_Print(jsonxml_sdtm_dataset_variables_2));
}

int main() {
  test_xml_sdtm_dataset_variables(1);
  test_xml_sdtm_dataset_variables(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_dataset_variables_MAIN
#endif // xml_sdtm_dataset_variables_TEST
