#ifndef cdash_class_links_TEST
#define cdash_class_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_links.h"
cdash_class_links_t* instantiate_cdash_class_links(int include_optional);

#include "test_cdash_class_ref.c"
#include "test_cdash_product_ref.c"
#include "test_cdash_class_ref.c"


cdash_class_links_t* instantiate_cdash_class_links(int include_optional) {
  cdash_class_links_t* cdash_class_links = NULL;
  if (include_optional) {
    cdash_class_links = cdash_class_links_create(
       // false, not to have infinite recursion
      instantiate_cdash_class_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_class_ref(0)
    );
  } else {
    cdash_class_links = cdash_class_links_create(
      NULL,
      NULL,
      NULL
    );
  }

  return cdash_class_links;
}


#ifdef cdash_class_links_MAIN

void test_cdash_class_links(int include_optional) {
    cdash_class_links_t* cdash_class_links_1 = instantiate_cdash_class_links(include_optional);

	cJSON* jsoncdash_class_links_1 = cdash_class_links_convertToJSON(cdash_class_links_1);
	printf("cdash_class_links :\n%s\n", cJSON_Print(jsoncdash_class_links_1));
	cdash_class_links_t* cdash_class_links_2 = cdash_class_links_parseFromJSON(jsoncdash_class_links_1);
	cJSON* jsoncdash_class_links_2 = cdash_class_links_convertToJSON(cdash_class_links_2);
	printf("repeating cdash_class_links:\n%s\n", cJSON_Print(jsoncdash_class_links_2));
}

int main() {
  test_cdash_class_links(1);
  test_cdash_class_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_links_MAIN
#endif // cdash_class_links_TEST
