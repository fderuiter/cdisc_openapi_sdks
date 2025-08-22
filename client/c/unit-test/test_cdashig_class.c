#ifndef cdashig_class_TEST
#define cdashig_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class.h"
cdashig_class_t* instantiate_cdashig_class(int include_optional);

#include "test_cdashig_class_links.c"


cdashig_class_t* instantiate_cdashig_class(int include_optional) {
  cdashig_class_t* cdashig_class = NULL;
  if (include_optional) {
    cdashig_class = cdashig_class_create(
      "4",
      "Findings",
      "Findings",
      "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)",
       // false, not to have infinite recursion
      instantiate_cdashig_class_links(0),
      list_createList(),
      list_createList()
    );
  } else {
    cdashig_class = cdashig_class_create(
      "4",
      "Findings",
      "Findings",
      "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)",
      NULL,
      list_createList(),
      list_createList()
    );
  }

  return cdashig_class;
}


#ifdef cdashig_class_MAIN

void test_cdashig_class(int include_optional) {
    cdashig_class_t* cdashig_class_1 = instantiate_cdashig_class(include_optional);

	cJSON* jsoncdashig_class_1 = cdashig_class_convertToJSON(cdashig_class_1);
	printf("cdashig_class :\n%s\n", cJSON_Print(jsoncdashig_class_1));
	cdashig_class_t* cdashig_class_2 = cdashig_class_parseFromJSON(jsoncdashig_class_1);
	cJSON* jsoncdashig_class_2 = cdashig_class_convertToJSON(cdashig_class_2);
	printf("repeating cdashig_class:\n%s\n", cJSON_Print(jsoncdashig_class_2));
}

int main() {
  test_cdashig_class(1);
  test_cdashig_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_MAIN
#endif // cdashig_class_TEST
