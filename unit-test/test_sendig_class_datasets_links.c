#ifndef sendig_class_datasets_links_TEST
#define sendig_class_datasets_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_class_datasets_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_class_datasets_links.h"
sendig_class_datasets_links_t* instantiate_sendig_class_datasets_links(int include_optional);

#include "test_sendig_class_datasets_ref.c"
#include "test_sendig_product_ref.c"


sendig_class_datasets_links_t* instantiate_sendig_class_datasets_links(int include_optional) {
  sendig_class_datasets_links_t* sendig_class_datasets_links = NULL;
  if (include_optional) {
    sendig_class_datasets_links = sendig_class_datasets_links_create(
       // false, not to have infinite recursion
      instantiate_sendig_class_datasets_ref(0),
       // false, not to have infinite recursion
      instantiate_sendig_product_ref(0),
      list_createList()
    );
  } else {
    sendig_class_datasets_links = sendig_class_datasets_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return sendig_class_datasets_links;
}


#ifdef sendig_class_datasets_links_MAIN

void test_sendig_class_datasets_links(int include_optional) {
    sendig_class_datasets_links_t* sendig_class_datasets_links_1 = instantiate_sendig_class_datasets_links(include_optional);

	cJSON* jsonsendig_class_datasets_links_1 = sendig_class_datasets_links_convertToJSON(sendig_class_datasets_links_1);
	printf("sendig_class_datasets_links :\n%s\n", cJSON_Print(jsonsendig_class_datasets_links_1));
	sendig_class_datasets_links_t* sendig_class_datasets_links_2 = sendig_class_datasets_links_parseFromJSON(jsonsendig_class_datasets_links_1);
	cJSON* jsonsendig_class_datasets_links_2 = sendig_class_datasets_links_convertToJSON(sendig_class_datasets_links_2);
	printf("repeating sendig_class_datasets_links:\n%s\n", cJSON_Print(jsonsendig_class_datasets_links_2));
}

int main() {
  test_sendig_class_datasets_links(1);
  test_sendig_class_datasets_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_class_datasets_links_MAIN
#endif // sendig_class_datasets_links_TEST
