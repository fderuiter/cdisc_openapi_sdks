#ifndef xml_sdtmig_dataset_TEST
#define xml_sdtmig_dataset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sdtmig_dataset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sdtmig_dataset.h"
xml_sdtmig_dataset_t* instantiate_xml_sdtmig_dataset(int include_optional);

#include "test_sdtmig_dataset.c"


xml_sdtmig_dataset_t* instantiate_xml_sdtmig_dataset(int include_optional) {
  xml_sdtmig_dataset_t* xml_sdtmig_dataset = NULL;
  if (include_optional) {
    xml_sdtmig_dataset = xml_sdtmig_dataset_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset(0)
    );
  } else {
    xml_sdtmig_dataset = xml_sdtmig_dataset_create(
      NULL
    );
  }

  return xml_sdtmig_dataset;
}


#ifdef xml_sdtmig_dataset_MAIN

void test_xml_sdtmig_dataset(int include_optional) {
    xml_sdtmig_dataset_t* xml_sdtmig_dataset_1 = instantiate_xml_sdtmig_dataset(include_optional);

	cJSON* jsonxml_sdtmig_dataset_1 = xml_sdtmig_dataset_convertToJSON(xml_sdtmig_dataset_1);
	printf("xml_sdtmig_dataset :\n%s\n", cJSON_Print(jsonxml_sdtmig_dataset_1));
	xml_sdtmig_dataset_t* xml_sdtmig_dataset_2 = xml_sdtmig_dataset_parseFromJSON(jsonxml_sdtmig_dataset_1);
	cJSON* jsonxml_sdtmig_dataset_2 = xml_sdtmig_dataset_convertToJSON(xml_sdtmig_dataset_2);
	printf("repeating xml_sdtmig_dataset:\n%s\n", cJSON_Print(jsonxml_sdtmig_dataset_2));
}

int main() {
  test_xml_sdtmig_dataset(1);
  test_xml_sdtmig_dataset(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sdtmig_dataset_MAIN
#endif // xml_sdtmig_dataset_TEST
