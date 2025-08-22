#ifndef products_TEST
#define products_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define products_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/products.h"
products_t* instantiate_products(int include_optional);

#include "test_products_links.c"


products_t* instantiate_products(int include_optional) {
  products_t* products = NULL;
  if (include_optional) {
    products = products_create(
       // false, not to have infinite recursion
      instantiate_products_links(0)
    );
  } else {
    products = products_create(
      NULL
    );
  }

  return products;
}


#ifdef products_MAIN

void test_products(int include_optional) {
    products_t* products_1 = instantiate_products(include_optional);

	cJSON* jsonproducts_1 = products_convertToJSON(products_1);
	printf("products :\n%s\n", cJSON_Print(jsonproducts_1));
	products_t* products_2 = products_parseFromJSON(jsonproducts_1);
	cJSON* jsonproducts_2 = products_convertToJSON(products_2);
	printf("repeating products:\n%s\n", cJSON_Print(jsonproducts_2));
}

int main() {
  test_products(1);
  test_products(0);

  printf("Hello world \n");
  return 0;
}

#endif // products_MAIN
#endif // products_TEST
