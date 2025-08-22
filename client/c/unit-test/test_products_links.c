#ifndef products_links_TEST
#define products_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define products_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/products_links.h"
products_links_t* instantiate_products_links(int include_optional);

#include "test_products_ref.c"
#include "test_productgroup_data_collection.c"
#include "test_productgroup_data_tabulation.c"
#include "test_productgroup_data_analysis.c"
#include "test_productgroup_terminology.c"
#include "test_productgroup_qrs.c"


products_links_t* instantiate_products_links(int include_optional) {
  products_links_t* products_links = NULL;
  if (include_optional) {
    products_links = products_links_create(
       // false, not to have infinite recursion
      instantiate_products_ref(0),
       // false, not to have infinite recursion
      instantiate_productgroup_data_collection(0),
       // false, not to have infinite recursion
      instantiate_productgroup_data_tabulation(0),
       // false, not to have infinite recursion
      instantiate_productgroup_data_analysis(0),
       // false, not to have infinite recursion
      instantiate_productgroup_terminology(0),
       // false, not to have infinite recursion
      instantiate_productgroup_qrs(0)
    );
  } else {
    products_links = products_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return products_links;
}


#ifdef products_links_MAIN

void test_products_links(int include_optional) {
    products_links_t* products_links_1 = instantiate_products_links(include_optional);

	cJSON* jsonproducts_links_1 = products_links_convertToJSON(products_links_1);
	printf("products_links :\n%s\n", cJSON_Print(jsonproducts_links_1));
	products_links_t* products_links_2 = products_links_parseFromJSON(jsonproducts_links_1);
	cJSON* jsonproducts_links_2 = products_links_convertToJSON(products_links_2);
	printf("repeating products_links:\n%s\n", cJSON_Print(jsonproducts_links_2));
}

int main() {
  test_products_links(1);
  test_products_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // products_links_MAIN
#endif // products_links_TEST
