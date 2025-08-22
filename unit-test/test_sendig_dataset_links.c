#ifndef sendig_dataset_links_TEST
#define sendig_dataset_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_dataset_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_dataset_links.h"
sendig_dataset_links_t* instantiate_sendig_dataset_links(int include_optional);

#include "test_sendig_dataset_ref.c"
#include "test_sdtm_dataset_ref.c"
#include "test_sendig_product_ref.c"
#include "test_sendig_class_ref.c"
#include "test_sendig_dataset_ref.c"


sendig_dataset_links_t* instantiate_sendig_dataset_links(int include_optional) {
  sendig_dataset_links_t* sendig_dataset_links = NULL;
  if (include_optional) {
    sendig_dataset_links = sendig_dataset_links_create(
       // false, not to have infinite recursion
      instantiate_sendig_dataset_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_ref(0),
       // false, not to have infinite recursion
      instantiate_sendig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sendig_class_ref(0),
       // false, not to have infinite recursion
      instantiate_sendig_dataset_ref(0)
    );
  } else {
    sendig_dataset_links = sendig_dataset_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return sendig_dataset_links;
}


#ifdef sendig_dataset_links_MAIN

void test_sendig_dataset_links(int include_optional) {
    sendig_dataset_links_t* sendig_dataset_links_1 = instantiate_sendig_dataset_links(include_optional);

	cJSON* jsonsendig_dataset_links_1 = sendig_dataset_links_convertToJSON(sendig_dataset_links_1);
	printf("sendig_dataset_links :\n%s\n", cJSON_Print(jsonsendig_dataset_links_1));
	sendig_dataset_links_t* sendig_dataset_links_2 = sendig_dataset_links_parseFromJSON(jsonsendig_dataset_links_1);
	cJSON* jsonsendig_dataset_links_2 = sendig_dataset_links_convertToJSON(sendig_dataset_links_2);
	printf("repeating sendig_dataset_links:\n%s\n", cJSON_Print(jsonsendig_dataset_links_2));
}

int main() {
  test_sendig_dataset_links(1);
  test_sendig_dataset_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_dataset_links_MAIN
#endif // sendig_dataset_links_TEST
