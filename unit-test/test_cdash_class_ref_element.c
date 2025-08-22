#ifndef cdash_class_ref_element_TEST
#define cdash_class_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_ref_element.h"
cdash_class_ref_element_t* instantiate_cdash_class_ref_element(int include_optional);



cdash_class_ref_element_t* instantiate_cdash_class_ref_element(int include_optional) {
  cdash_class_ref_element_t* cdash_class_ref_element = NULL;
  if (include_optional) {
    cdash_class_ref_element = cdash_class_ref_element_create(
      "/mdr/cdash/1-1classes/Timing",
      "Timing Class",
      "Class"
    );
  } else {
    cdash_class_ref_element = cdash_class_ref_element_create(
      "/mdr/cdash/1-1classes/Timing",
      "Timing Class",
      "Class"
    );
  }

  return cdash_class_ref_element;
}


#ifdef cdash_class_ref_element_MAIN

void test_cdash_class_ref_element(int include_optional) {
    cdash_class_ref_element_t* cdash_class_ref_element_1 = instantiate_cdash_class_ref_element(include_optional);

	cJSON* jsoncdash_class_ref_element_1 = cdash_class_ref_element_convertToJSON(cdash_class_ref_element_1);
	printf("cdash_class_ref_element :\n%s\n", cJSON_Print(jsoncdash_class_ref_element_1));
	cdash_class_ref_element_t* cdash_class_ref_element_2 = cdash_class_ref_element_parseFromJSON(jsoncdash_class_ref_element_1);
	cJSON* jsoncdash_class_ref_element_2 = cdash_class_ref_element_convertToJSON(cdash_class_ref_element_2);
	printf("repeating cdash_class_ref_element:\n%s\n", cJSON_Print(jsoncdash_class_ref_element_2));
}

int main() {
  test_cdash_class_ref_element(1);
  test_cdash_class_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_ref_element_MAIN
#endif // cdash_class_ref_element_TEST
