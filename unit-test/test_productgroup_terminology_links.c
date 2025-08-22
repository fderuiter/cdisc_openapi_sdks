#ifndef productgroup_terminology_links_TEST
#define productgroup_terminology_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_terminology_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_terminology_links.h"
productgroup_terminology_links_t* instantiate_productgroup_terminology_links(int include_optional);

#include "test_productgroup_ref.c"


productgroup_terminology_links_t* instantiate_productgroup_terminology_links(int include_optional) {
  productgroup_terminology_links_t* productgroup_terminology_links = NULL;
  if (include_optional) {
    productgroup_terminology_links = productgroup_terminology_links_create(
       // false, not to have infinite recursion
      instantiate_productgroup_ref(0),
      list_createList()
    );
  } else {
    productgroup_terminology_links = productgroup_terminology_links_create(
      NULL,
      list_createList()
    );
  }

  return productgroup_terminology_links;
}


#ifdef productgroup_terminology_links_MAIN

void test_productgroup_terminology_links(int include_optional) {
    productgroup_terminology_links_t* productgroup_terminology_links_1 = instantiate_productgroup_terminology_links(include_optional);

	cJSON* jsonproductgroup_terminology_links_1 = productgroup_terminology_links_convertToJSON(productgroup_terminology_links_1);
	printf("productgroup_terminology_links :\n%s\n", cJSON_Print(jsonproductgroup_terminology_links_1));
	productgroup_terminology_links_t* productgroup_terminology_links_2 = productgroup_terminology_links_parseFromJSON(jsonproductgroup_terminology_links_1);
	cJSON* jsonproductgroup_terminology_links_2 = productgroup_terminology_links_convertToJSON(productgroup_terminology_links_2);
	printf("repeating productgroup_terminology_links:\n%s\n", cJSON_Print(jsonproductgroup_terminology_links_2));
}

int main() {
  test_productgroup_terminology_links(1);
  test_productgroup_terminology_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_terminology_links_MAIN
#endif // productgroup_terminology_links_TEST
