#ifndef productgroup_data_tabulation_links_TEST
#define productgroup_data_tabulation_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_data_tabulation_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_data_tabulation_links.h"
productgroup_data_tabulation_links_t* instantiate_productgroup_data_tabulation_links(int include_optional);

#include "test_productgroup_ref.c"


productgroup_data_tabulation_links_t* instantiate_productgroup_data_tabulation_links(int include_optional) {
  productgroup_data_tabulation_links_t* productgroup_data_tabulation_links = NULL;
  if (include_optional) {
    productgroup_data_tabulation_links = productgroup_data_tabulation_links_create(
       // false, not to have infinite recursion
      instantiate_productgroup_ref(0),
      list_createList(),
      list_createList(),
      list_createList()
    );
  } else {
    productgroup_data_tabulation_links = productgroup_data_tabulation_links_create(
      NULL,
      list_createList(),
      list_createList(),
      list_createList()
    );
  }

  return productgroup_data_tabulation_links;
}


#ifdef productgroup_data_tabulation_links_MAIN

void test_productgroup_data_tabulation_links(int include_optional) {
    productgroup_data_tabulation_links_t* productgroup_data_tabulation_links_1 = instantiate_productgroup_data_tabulation_links(include_optional);

	cJSON* jsonproductgroup_data_tabulation_links_1 = productgroup_data_tabulation_links_convertToJSON(productgroup_data_tabulation_links_1);
	printf("productgroup_data_tabulation_links :\n%s\n", cJSON_Print(jsonproductgroup_data_tabulation_links_1));
	productgroup_data_tabulation_links_t* productgroup_data_tabulation_links_2 = productgroup_data_tabulation_links_parseFromJSON(jsonproductgroup_data_tabulation_links_1);
	cJSON* jsonproductgroup_data_tabulation_links_2 = productgroup_data_tabulation_links_convertToJSON(productgroup_data_tabulation_links_2);
	printf("repeating productgroup_data_tabulation_links:\n%s\n", cJSON_Print(jsonproductgroup_data_tabulation_links_2));
}

int main() {
  test_productgroup_data_tabulation_links(1);
  test_productgroup_data_tabulation_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_data_tabulation_links_MAIN
#endif // productgroup_data_tabulation_links_TEST
