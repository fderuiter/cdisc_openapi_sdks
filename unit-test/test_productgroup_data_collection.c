#ifndef productgroup_data_collection_TEST
#define productgroup_data_collection_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define productgroup_data_collection_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/productgroup_data_collection.h"
productgroup_data_collection_t* instantiate_productgroup_data_collection(int include_optional);

#include "test_productgroup_data_collection_links.c"


productgroup_data_collection_t* instantiate_productgroup_data_collection(int include_optional) {
  productgroup_data_collection_t* productgroup_data_collection = NULL;
  if (include_optional) {
    productgroup_data_collection = productgroup_data_collection_create(
       // false, not to have infinite recursion
      instantiate_productgroup_data_collection_links(0)
    );
  } else {
    productgroup_data_collection = productgroup_data_collection_create(
      NULL
    );
  }

  return productgroup_data_collection;
}


#ifdef productgroup_data_collection_MAIN

void test_productgroup_data_collection(int include_optional) {
    productgroup_data_collection_t* productgroup_data_collection_1 = instantiate_productgroup_data_collection(include_optional);

	cJSON* jsonproductgroup_data_collection_1 = productgroup_data_collection_convertToJSON(productgroup_data_collection_1);
	printf("productgroup_data_collection :\n%s\n", cJSON_Print(jsonproductgroup_data_collection_1));
	productgroup_data_collection_t* productgroup_data_collection_2 = productgroup_data_collection_parseFromJSON(jsonproductgroup_data_collection_1);
	cJSON* jsonproductgroup_data_collection_2 = productgroup_data_collection_convertToJSON(productgroup_data_collection_2);
	printf("repeating productgroup_data_collection:\n%s\n", cJSON_Print(jsonproductgroup_data_collection_2));
}

int main() {
  test_productgroup_data_collection(1);
  test_productgroup_data_collection(0);

  printf("Hello world \n");
  return 0;
}

#endif // productgroup_data_collection_MAIN
#endif // productgroup_data_collection_TEST
