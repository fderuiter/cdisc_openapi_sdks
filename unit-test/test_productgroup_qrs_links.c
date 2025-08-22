#ifndef productgroup_qrs_links_TEST
#define productgroup_qrs_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_qrs_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_qrs_links.h"
productgroup_qrs_links_t* instantiate_productgroup_qrs_links(int include_optional);

#include "test_productgroup_ref.c"


productgroup_qrs_links_t* instantiate_productgroup_qrs_links(int include_optional) {
  productgroup_qrs_links_t* productgroup_qrs_links = NULL;
  if (include_optional) {
    productgroup_qrs_links = productgroup_qrs_links_create(
       // false, not to have infinite recursion
      instantiate_productgroup_ref(0),
      list_createList()
    );
  } else {
    productgroup_qrs_links = productgroup_qrs_links_create(
      NULL,
      list_createList()
    );
  }

  return productgroup_qrs_links;
}


#ifdef productgroup_qrs_links_MAIN

void test_productgroup_qrs_links(int include_optional) {
    productgroup_qrs_links_t* productgroup_qrs_links_1 = instantiate_productgroup_qrs_links(include_optional);

	cJSON* jsonproductgroup_qrs_links_1 = productgroup_qrs_links_convertToJSON(productgroup_qrs_links_1);
	printf("productgroup_qrs_links :\n%s\n", cJSON_Print(jsonproductgroup_qrs_links_1));
	productgroup_qrs_links_t* productgroup_qrs_links_2 = productgroup_qrs_links_parseFromJSON(jsonproductgroup_qrs_links_1);
	cJSON* jsonproductgroup_qrs_links_2 = productgroup_qrs_links_convertToJSON(productgroup_qrs_links_2);
	printf("repeating productgroup_qrs_links:\n%s\n", cJSON_Print(jsonproductgroup_qrs_links_2));
}

int main() {
  test_productgroup_qrs_links(1);
  test_productgroup_qrs_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_qrs_links_MAIN
#endif // productgroup_qrs_links_TEST
