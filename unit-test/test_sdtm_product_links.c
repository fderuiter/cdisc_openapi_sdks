#ifndef sdtm_product_links_TEST
#define sdtm_product_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_product_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_product_links.h"
sdtm_product_links_t* instantiate_sdtm_product_links(int include_optional);

#include "test_sdtm_product_ref.c"
#include "test_sdtm_product_ref.c"


sdtm_product_links_t* instantiate_sdtm_product_links(int include_optional) {
  sdtm_product_links_t* sdtm_product_links = NULL;
  if (include_optional) {
    sdtm_product_links = sdtm_product_links_create(
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0)
    );
  } else {
    sdtm_product_links = sdtm_product_links_create(
      NULL,
      NULL
    );
  }

  return sdtm_product_links;
}


#ifdef sdtm_product_links_MAIN

void test_sdtm_product_links(int include_optional) {
    sdtm_product_links_t* sdtm_product_links_1 = instantiate_sdtm_product_links(include_optional);

	cJSON* jsonsdtm_product_links_1 = sdtm_product_links_convertToJSON(sdtm_product_links_1);
	printf("sdtm_product_links :\n%s\n", cJSON_Print(jsonsdtm_product_links_1));
	sdtm_product_links_t* sdtm_product_links_2 = sdtm_product_links_parseFromJSON(jsonsdtm_product_links_1);
	cJSON* jsonsdtm_product_links_2 = sdtm_product_links_convertToJSON(sdtm_product_links_2);
	printf("repeating sdtm_product_links:\n%s\n", cJSON_Print(jsonsdtm_product_links_2));
}

int main() {
  test_sdtm_product_links(1);
  test_sdtm_product_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_product_links_MAIN
#endif // sdtm_product_links_TEST
