#ifndef cdash_class_TEST
#define cdash_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class.h"
cdash_class_t* instantiate_cdash_class(int include_optional);

#include "test_cdash_class_links.c"


cdash_class_t* instantiate_cdash_class(int include_optional) {
  cdash_class_t* cdash_class = NULL;
  if (include_optional) {
    cdash_class = cdash_class_create(
      "5",
      "Timing",
      "Timing Class",
      "Timing class variables",
       // false, not to have infinite recursion
      instantiate_cdash_class_links(0),
      list_createList()
    );
  } else {
    cdash_class = cdash_class_create(
      "5",
      "Timing",
      "Timing Class",
      "Timing class variables",
      NULL,
      list_createList()
    );
  }

  return cdash_class;
}


#ifdef cdash_class_MAIN

void test_cdash_class(int include_optional) {
    cdash_class_t* cdash_class_1 = instantiate_cdash_class(include_optional);

	cJSON* jsoncdash_class_1 = cdash_class_convertToJSON(cdash_class_1);
	printf("cdash_class :\n%s\n", cJSON_Print(jsoncdash_class_1));
	cdash_class_t* cdash_class_2 = cdash_class_parseFromJSON(jsoncdash_class_1);
	cJSON* jsoncdash_class_2 = cdash_class_convertToJSON(cdash_class_2);
	printf("repeating cdash_class:\n%s\n", cJSON_Print(jsoncdash_class_2));
}

int main() {
  test_cdash_class(1);
  test_cdash_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_MAIN
#endif // cdash_class_TEST
