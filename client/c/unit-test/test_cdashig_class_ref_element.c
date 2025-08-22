#ifndef cdashig_class_ref_element_TEST
#define cdashig_class_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_ref_element.h"
cdashig_class_ref_element_t* instantiate_cdashig_class_ref_element(int include_optional);



cdashig_class_ref_element_t* instantiate_cdashig_class_ref_element(int include_optional) {
  cdashig_class_ref_element_t* cdashig_class_ref_element = NULL;
  if (include_optional) {
    cdashig_class_ref_element = cdashig_class_ref_element_create(
      "/mdr/cdashig/2-1/classes/Findings",
      "Findings",
      "Class"
    );
  } else {
    cdashig_class_ref_element = cdashig_class_ref_element_create(
      "/mdr/cdashig/2-1/classes/Findings",
      "Findings",
      "Class"
    );
  }

  return cdashig_class_ref_element;
}


#ifdef cdashig_class_ref_element_MAIN

void test_cdashig_class_ref_element(int include_optional) {
    cdashig_class_ref_element_t* cdashig_class_ref_element_1 = instantiate_cdashig_class_ref_element(include_optional);

	cJSON* jsoncdashig_class_ref_element_1 = cdashig_class_ref_element_convertToJSON(cdashig_class_ref_element_1);
	printf("cdashig_class_ref_element :\n%s\n", cJSON_Print(jsoncdashig_class_ref_element_1));
	cdashig_class_ref_element_t* cdashig_class_ref_element_2 = cdashig_class_ref_element_parseFromJSON(jsoncdashig_class_ref_element_1);
	cJSON* jsoncdashig_class_ref_element_2 = cdashig_class_ref_element_convertToJSON(cdashig_class_ref_element_2);
	printf("repeating cdashig_class_ref_element:\n%s\n", cJSON_Print(jsoncdashig_class_ref_element_2));
}

int main() {
  test_cdashig_class_ref_element(1);
  test_cdashig_class_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_ref_element_MAIN
#endif // cdashig_class_ref_element_TEST
