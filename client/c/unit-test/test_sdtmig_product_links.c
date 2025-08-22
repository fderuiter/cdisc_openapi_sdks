#ifndef sdtmig_product_links_TEST
#define sdtmig_product_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_product_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_product_links.h"
sdtmig_product_links_t* instantiate_sdtmig_product_links(int include_optional);

#include "test_sdtmig_product_ref.c"
#include "test_sdtm_product_ref.c"
#include "test_sdtmig_product_ref.c"


sdtmig_product_links_t* instantiate_sdtmig_product_links(int include_optional) {
  sdtmig_product_links_t* sdtmig_product_links = NULL;
  if (include_optional) {
    sdtmig_product_links = sdtmig_product_links_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_product_ref(0)
    );
  } else {
    sdtmig_product_links = sdtmig_product_links_create(
      NULL,
      NULL,
      NULL
    );
  }

  return sdtmig_product_links;
}


#ifdef sdtmig_product_links_MAIN

void test_sdtmig_product_links(int include_optional) {
    sdtmig_product_links_t* sdtmig_product_links_1 = instantiate_sdtmig_product_links(include_optional);

	cJSON* jsonsdtmig_product_links_1 = sdtmig_product_links_convertToJSON(sdtmig_product_links_1);
	printf("sdtmig_product_links :\n%s\n", cJSON_Print(jsonsdtmig_product_links_1));
	sdtmig_product_links_t* sdtmig_product_links_2 = sdtmig_product_links_parseFromJSON(jsonsdtmig_product_links_1);
	cJSON* jsonsdtmig_product_links_2 = sdtmig_product_links_convertToJSON(sdtmig_product_links_2);
	printf("repeating sdtmig_product_links:\n%s\n", cJSON_Print(jsonsdtmig_product_links_2));
}

int main() {
  test_sdtmig_product_links(1);
  test_sdtmig_product_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_product_links_MAIN
#endif // sdtmig_product_links_TEST
