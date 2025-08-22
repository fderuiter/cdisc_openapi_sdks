#ifndef sendig_product_links_TEST
#define sendig_product_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_product_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_product_links.h"
sendig_product_links_t* instantiate_sendig_product_links(int include_optional);

#include "test_sendig_product_ref.c"
#include "test_sdtm_product_ref.c"
#include "test_sendig_product_ref.c"


sendig_product_links_t* instantiate_sendig_product_links(int include_optional) {
  sendig_product_links_t* sendig_product_links = NULL;
  if (include_optional) {
    sendig_product_links = sendig_product_links_create(
       // false, not to have infinite recursion
      instantiate_sendig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sendig_product_ref(0)
    );
  } else {
    sendig_product_links = sendig_product_links_create(
      NULL,
      NULL,
      NULL
    );
  }

  return sendig_product_links;
}


#ifdef sendig_product_links_MAIN

void test_sendig_product_links(int include_optional) {
    sendig_product_links_t* sendig_product_links_1 = instantiate_sendig_product_links(include_optional);

	cJSON* jsonsendig_product_links_1 = sendig_product_links_convertToJSON(sendig_product_links_1);
	printf("sendig_product_links :\n%s\n", cJSON_Print(jsonsendig_product_links_1));
	sendig_product_links_t* sendig_product_links_2 = sendig_product_links_parseFromJSON(jsonsendig_product_links_1);
	cJSON* jsonsendig_product_links_2 = sendig_product_links_convertToJSON(sendig_product_links_2);
	printf("repeating sendig_product_links:\n%s\n", cJSON_Print(jsonsendig_product_links_2));
}

int main() {
  test_sendig_product_links(1);
  test_sendig_product_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_product_links_MAIN
#endif // sendig_product_links_TEST
