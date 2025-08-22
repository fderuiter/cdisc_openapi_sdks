#ifndef xml_sendig_dataset_TEST
#define xml_sendig_dataset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sendig_dataset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sendig_dataset.h"
xml_sendig_dataset_t* instantiate_xml_sendig_dataset(int include_optional);

#include "test_sendig_dataset.c"


xml_sendig_dataset_t* instantiate_xml_sendig_dataset(int include_optional) {
  xml_sendig_dataset_t* xml_sendig_dataset = NULL;
  if (include_optional) {
    xml_sendig_dataset = xml_sendig_dataset_create(
       // false, not to have infinite recursion
      instantiate_sendig_dataset(0)
    );
  } else {
    xml_sendig_dataset = xml_sendig_dataset_create(
      NULL
    );
  }

  return xml_sendig_dataset;
}


#ifdef xml_sendig_dataset_MAIN

void test_xml_sendig_dataset(int include_optional) {
    xml_sendig_dataset_t* xml_sendig_dataset_1 = instantiate_xml_sendig_dataset(include_optional);

	cJSON* jsonxml_sendig_dataset_1 = xml_sendig_dataset_convertToJSON(xml_sendig_dataset_1);
	printf("xml_sendig_dataset :\n%s\n", cJSON_Print(jsonxml_sendig_dataset_1));
	xml_sendig_dataset_t* xml_sendig_dataset_2 = xml_sendig_dataset_parseFromJSON(jsonxml_sendig_dataset_1);
	cJSON* jsonxml_sendig_dataset_2 = xml_sendig_dataset_convertToJSON(xml_sendig_dataset_2);
	printf("repeating xml_sendig_dataset:\n%s\n", cJSON_Print(jsonxml_sendig_dataset_2));
}

int main() {
  test_xml_sendig_dataset(1);
  test_xml_sendig_dataset(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sendig_dataset_MAIN
#endif // xml_sendig_dataset_TEST
