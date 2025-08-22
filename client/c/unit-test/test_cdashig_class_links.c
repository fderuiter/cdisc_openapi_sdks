#ifndef cdashig_class_links_TEST
#define cdashig_class_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_links.h"
cdashig_class_links_t* instantiate_cdashig_class_links(int include_optional);

#include "test_cdashig_class_ref.c"
#include "test_cdash_class_ref.c"
#include "test_cdashig_product_ref.c"
#include "test_cdashig_class_ref.c"
#include "test_cdashig_class_ref.c"


cdashig_class_links_t* instantiate_cdashig_class_links(int include_optional) {
  cdashig_class_links_t* cdashig_class_links = NULL;
  if (include_optional) {
    cdashig_class_links = cdashig_class_links_create(
       // false, not to have infinite recursion
      instantiate_cdashig_class_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_class_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_class_ref(0),
      list_createList(),
       // false, not to have infinite recursion
      instantiate_cdashig_class_ref(0)
    );
  } else {
    cdashig_class_links = cdashig_class_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      list_createList(),
      NULL
    );
  }

  return cdashig_class_links;
}


#ifdef cdashig_class_links_MAIN

void test_cdashig_class_links(int include_optional) {
    cdashig_class_links_t* cdashig_class_links_1 = instantiate_cdashig_class_links(include_optional);

	cJSON* jsoncdashig_class_links_1 = cdashig_class_links_convertToJSON(cdashig_class_links_1);
	printf("cdashig_class_links :\n%s\n", cJSON_Print(jsoncdashig_class_links_1));
	cdashig_class_links_t* cdashig_class_links_2 = cdashig_class_links_parseFromJSON(jsoncdashig_class_links_1);
	cJSON* jsoncdashig_class_links_2 = cdashig_class_links_convertToJSON(cdashig_class_links_2);
	printf("repeating cdashig_class_links:\n%s\n", cJSON_Print(jsoncdashig_class_links_2));
}

int main() {
  test_cdashig_class_links(1);
  test_cdashig_class_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_links_MAIN
#endif // cdashig_class_links_TEST
