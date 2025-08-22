#ifndef xml_sendig_datasets_TEST
#define xml_sendig_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define xml_sendig_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/xml_sendig_datasets.h"
xml_sendig_datasets_t* instantiate_xml_sendig_datasets(int include_optional);

#include "test_sendig_datasets.c"


xml_sendig_datasets_t* instantiate_xml_sendig_datasets(int include_optional) {
  xml_sendig_datasets_t* xml_sendig_datasets = NULL;
  if (include_optional) {
    xml_sendig_datasets = xml_sendig_datasets_create(
       // false, not to have infinite recursion
      instantiate_sendig_datasets(0)
    );
  } else {
    xml_sendig_datasets = xml_sendig_datasets_create(
      NULL
    );
  }

  return xml_sendig_datasets;
}


#ifdef xml_sendig_datasets_MAIN

void test_xml_sendig_datasets(int include_optional) {
    xml_sendig_datasets_t* xml_sendig_datasets_1 = instantiate_xml_sendig_datasets(include_optional);

	cJSON* jsonxml_sendig_datasets_1 = xml_sendig_datasets_convertToJSON(xml_sendig_datasets_1);
	printf("xml_sendig_datasets :\n%s\n", cJSON_Print(jsonxml_sendig_datasets_1));
	xml_sendig_datasets_t* xml_sendig_datasets_2 = xml_sendig_datasets_parseFromJSON(jsonxml_sendig_datasets_1);
	cJSON* jsonxml_sendig_datasets_2 = xml_sendig_datasets_convertToJSON(xml_sendig_datasets_2);
	printf("repeating xml_sendig_datasets:\n%s\n", cJSON_Print(jsonxml_sendig_datasets_2));
}

int main() {
  test_xml_sendig_datasets(1);
  test_xml_sendig_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // xml_sendig_datasets_MAIN
#endif // xml_sendig_datasets_TEST
