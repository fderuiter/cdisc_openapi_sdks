#ifndef xml_sdtm_dataset_TEST
#define xml_sdtm_dataset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtm_dataset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtm_dataset.h"
xml_sdtm_dataset_t* instantiate_xml_sdtm_dataset(int include_optional);

#include "test_sdtm_dataset.c"


xml_sdtm_dataset_t* instantiate_xml_sdtm_dataset(int include_optional) {
  xml_sdtm_dataset_t* xml_sdtm_dataset = NULL;
  if (include_optional) {
    xml_sdtm_dataset = xml_sdtm_dataset_create(
       // false, not to have infinite recursion
      instantiate_sdtm_dataset(0)
    );
  } else {
    xml_sdtm_dataset = xml_sdtm_dataset_create(
      NULL
    );
  }

  return xml_sdtm_dataset;
}


#ifdef xml_sdtm_dataset_MAIN

void test_xml_sdtm_dataset(int include_optional) {
    xml_sdtm_dataset_t* xml_sdtm_dataset_1 = instantiate_xml_sdtm_dataset(include_optional);

	cJSON* jsonxml_sdtm_dataset_1 = xml_sdtm_dataset_convertToJSON(xml_sdtm_dataset_1);
	printf("xml_sdtm_dataset :\n%s\n", cJSON_Print(jsonxml_sdtm_dataset_1));
	xml_sdtm_dataset_t* xml_sdtm_dataset_2 = xml_sdtm_dataset_parseFromJSON(jsonxml_sdtm_dataset_1);
	cJSON* jsonxml_sdtm_dataset_2 = xml_sdtm_dataset_convertToJSON(xml_sdtm_dataset_2);
	printf("repeating xml_sdtm_dataset:\n%s\n", cJSON_Print(jsonxml_sdtm_dataset_2));
}

int main() {
  test_xml_sdtm_dataset(1);
  test_xml_sdtm_dataset(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtm_dataset_MAIN
#endif // xml_sdtm_dataset_TEST
