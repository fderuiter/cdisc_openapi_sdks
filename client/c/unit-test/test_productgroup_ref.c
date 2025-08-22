#ifndef productgroup_ref_TEST
#define productgroup_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_ref.h"
productgroup_ref_t* instantiate_productgroup_ref(int include_optional);



productgroup_ref_t* instantiate_productgroup_ref(int include_optional) {
  productgroup_ref_t* productgroup_ref = NULL;
  if (include_optional) {
    productgroup_ref = productgroup_ref_create(
      "/mdr/products/DataTabulation",
      "Product Group Data Tabulation",
      "CDISC Library Product Group"
    );
  } else {
    productgroup_ref = productgroup_ref_create(
      "/mdr/products/DataTabulation",
      "Product Group Data Tabulation",
      "CDISC Library Product Group"
    );
  }

  return productgroup_ref;
}


#ifdef productgroup_ref_MAIN

void test_productgroup_ref(int include_optional) {
    productgroup_ref_t* productgroup_ref_1 = instantiate_productgroup_ref(include_optional);

	cJSON* jsonproductgroup_ref_1 = productgroup_ref_convertToJSON(productgroup_ref_1);
	printf("productgroup_ref :\n%s\n", cJSON_Print(jsonproductgroup_ref_1));
	productgroup_ref_t* productgroup_ref_2 = productgroup_ref_parseFromJSON(jsonproductgroup_ref_1);
	cJSON* jsonproductgroup_ref_2 = productgroup_ref_convertToJSON(productgroup_ref_2);
	printf("repeating productgroup_ref:\n%s\n", cJSON_Print(jsonproductgroup_ref_2));
}

int main() {
  test_productgroup_ref(1);
  test_productgroup_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_ref_MAIN
#endif // productgroup_ref_TEST
