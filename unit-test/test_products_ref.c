#ifndef products_ref_TEST
#define products_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define products_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/products_ref.h"
products_ref_t* instantiate_products_ref(int include_optional);



products_ref_t* instantiate_products_ref(int include_optional) {
  products_ref_t* products_ref = NULL;
  if (include_optional) {
    products_ref = products_ref_create(
      "/mdr/products",
      "CDISC Library Product List",
      "CDISC Library Product List"
    );
  } else {
    products_ref = products_ref_create(
      "/mdr/products",
      "CDISC Library Product List",
      "CDISC Library Product List"
    );
  }

  return products_ref;
}


#ifdef products_ref_MAIN

void test_products_ref(int include_optional) {
    products_ref_t* products_ref_1 = instantiate_products_ref(include_optional);

	cJSON* jsonproducts_ref_1 = products_ref_convertToJSON(products_ref_1);
	printf("products_ref :\n%s\n", cJSON_Print(jsonproducts_ref_1));
	products_ref_t* products_ref_2 = products_ref_parseFromJSON(jsonproducts_ref_1);
	cJSON* jsonproducts_ref_2 = products_ref_convertToJSON(products_ref_2);
	printf("repeating products_ref:\n%s\n", cJSON_Print(jsonproducts_ref_2));
}

int main() {
  test_products_ref(1);
  test_products_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // products_ref_MAIN
#endif // products_ref_TEST
