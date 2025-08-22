#ifndef cdash_product_links_TEST
#define cdash_product_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_product_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_product_links.h"
cdash_product_links_t* instantiate_cdash_product_links(int include_optional);

#include "test_cdash_product_ref.c"
#include "test_cdash_product_ref.c"


cdash_product_links_t* instantiate_cdash_product_links(int include_optional) {
  cdash_product_links_t* cdash_product_links = NULL;
  if (include_optional) {
    cdash_product_links = cdash_product_links_create(
       // false, not to have infinite recursion
      instantiate_cdash_product_ref(0),
       // false, not to have infinite recursion
      instantiate_cdash_product_ref(0)
    );
  } else {
    cdash_product_links = cdash_product_links_create(
      NULL,
      NULL
    );
  }

  return cdash_product_links;
}


#ifdef cdash_product_links_MAIN

void test_cdash_product_links(int include_optional) {
    cdash_product_links_t* cdash_product_links_1 = instantiate_cdash_product_links(include_optional);

	cJSON* jsoncdash_product_links_1 = cdash_product_links_convertToJSON(cdash_product_links_1);
	printf("cdash_product_links :\n%s\n", cJSON_Print(jsoncdash_product_links_1));
	cdash_product_links_t* cdash_product_links_2 = cdash_product_links_parseFromJSON(jsoncdash_product_links_1);
	cJSON* jsoncdash_product_links_2 = cdash_product_links_convertToJSON(cdash_product_links_2);
	printf("repeating cdash_product_links:\n%s\n", cJSON_Print(jsoncdash_product_links_2));
}

int main() {
  test_cdash_product_links(1);
  test_cdash_product_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_product_links_MAIN
#endif // cdash_product_links_TEST
