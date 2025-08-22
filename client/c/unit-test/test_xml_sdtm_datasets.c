#ifndef xml_sdtm_datasets_TEST
#define xml_sdtm_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_datasets.h"
xml_sdtm_datasets_t* instantiate_xml_sdtm_datasets(int include_optional);

#include "test_sdtm_datasets.c"


xml_sdtm_datasets_t* instantiate_xml_sdtm_datasets(int include_optional) {
  xml_sdtm_datasets_t* xml_sdtm_datasets = NULL;
  if (include_optional) {
    xml_sdtm_datasets = xml_sdtm_datasets_create(
       // false, not to have infinite recursion
      instantiate_sdtm_datasets(0)
    );
  } else {
    xml_sdtm_datasets = xml_sdtm_datasets_create(
      NULL
    );
  }

  return xml_sdtm_datasets;
}


#ifdef xml_sdtm_datasets_MAIN

void test_xml_sdtm_datasets(int include_optional) {
    xml_sdtm_datasets_t* xml_sdtm_datasets_1 = instantiate_xml_sdtm_datasets(include_optional);

	cJSON* jsonxml_sdtm_datasets_1 = xml_sdtm_datasets_convertToJSON(xml_sdtm_datasets_1);
	printf("xml_sdtm_datasets :\n%s\n", cJSON_Print(jsonxml_sdtm_datasets_1));
	xml_sdtm_datasets_t* xml_sdtm_datasets_2 = xml_sdtm_datasets_parseFromJSON(jsonxml_sdtm_datasets_1);
	cJSON* jsonxml_sdtm_datasets_2 = xml_sdtm_datasets_convertToJSON(xml_sdtm_datasets_2);
	printf("repeating xml_sdtm_datasets:\n%s\n", cJSON_Print(jsonxml_sdtm_datasets_2));
}

int main() {
  test_xml_sdtm_datasets(1);
  test_xml_sdtm_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_datasets_MAIN
#endif // xml_sdtm_datasets_TEST
