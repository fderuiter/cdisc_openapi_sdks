#ifndef cdashig_product_links_TEST
#define cdashig_product_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_product_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_product_links.h"
cdashig_product_links_t* instantiate_cdashig_product_links(int include_optional);

#include "test_cdashig_product_ref.c"
#include "test_cdash_product_ref.c"
#include "test_cdashig_product_ref.c"


cdashig_product_links_t* instantiate_cdashig_product_links(int include_optional) {
  cdashig_product_links_t* cdashig_product_links = NULL;
  if (include_optional) {
    cdashig_product_links = cdashig_product_links_create(
       // false, not to have infinite recursion
      instantiate_cdashig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdashig_product_ref(0)
    );
  } else {
    cdashig_product_links = cdashig_product_links_create(
      NULL,
      NULL,
      NULL
    );
  }

  return cdashig_product_links;
}


#ifdef cdashig_product_links_MAIN

void test_cdashig_product_links(int include_optional) {
    cdashig_product_links_t* cdashig_product_links_1 = instantiate_cdashig_product_links(include_optional);

	cJSON* jsoncdashig_product_links_1 = cdashig_product_links_convertToJSON(cdashig_product_links_1);
	printf("cdashig_product_links :\n%s\n", cJSON_Print(jsoncdashig_product_links_1));
	cdashig_product_links_t* cdashig_product_links_2 = cdashig_product_links_parseFromJSON(jsoncdashig_product_links_1);
	cJSON* jsoncdashig_product_links_2 = cdashig_product_links_convertToJSON(cdashig_product_links_2);
	printf("repeating cdashig_product_links:\n%s\n", cJSON_Print(jsoncdashig_product_links_2));
}

int main() {
  test_cdashig_product_links(1);
  test_cdashig_product_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_product_links_MAIN
#endif // cdashig_product_links_TEST
