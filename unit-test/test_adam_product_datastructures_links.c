#ifndef adam_product_datastructures_links_TEST
#define adam_product_datastructures_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_product_datastructures_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_product_datastructures_links.h"
adam_product_datastructures_links_t* instantiate_adam_product_datastructures_links(int include_optional);

#include "test_adam_product_datastructures_ref.c"
#include "test_adam_product_datastructures_ref.c"


adam_product_datastructures_links_t* instantiate_adam_product_datastructures_links(int include_optional) {
  adam_product_datastructures_links_t* adam_product_datastructures_links = NULL;
  if (include_optional) {
    adam_product_datastructures_links = adam_product_datastructures_links_create(
       // false, not to have infinite recursion
      instantiate_adam_product_datastructures_ref(0),
       // false, not to have infinite recursion
      instantiate_adam_product_datastructures_ref(0),
      list_createList()
    );
  } else {
    adam_product_datastructures_links = adam_product_datastructures_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return adam_product_datastructures_links;
}


#ifdef adam_product_datastructures_links_MAIN

void test_adam_product_datastructures_links(int include_optional) {
    adam_product_datastructures_links_t* adam_product_datastructures_links_1 = instantiate_adam_product_datastructures_links(include_optional);

	cJSON* jsonadam_product_datastructures_links_1 = adam_product_datastructures_links_convertToJSON(adam_product_datastructures_links_1);
	printf("adam_product_datastructures_links :\n%s\n", cJSON_Print(jsonadam_product_datastructures_links_1));
	adam_product_datastructures_links_t* adam_product_datastructures_links_2 = adam_product_datastructures_links_parseFromJSON(jsonadam_product_datastructures_links_1);
	cJSON* jsonadam_product_datastructures_links_2 = adam_product_datastructures_links_convertToJSON(adam_product_datastructures_links_2);
	printf("repeating adam_product_datastructures_links:\n%s\n", cJSON_Print(jsonadam_product_datastructures_links_2));
}

int main() {
  test_adam_product_datastructures_links(1);
  test_adam_product_datastructures_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_product_datastructures_links_MAIN
#endif // adam_product_datastructures_links_TEST
