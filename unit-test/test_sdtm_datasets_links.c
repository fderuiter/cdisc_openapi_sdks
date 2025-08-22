#ifndef sdtm_datasets_links_TEST
#define sdtm_datasets_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_datasets_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_datasets_links.h"
sdtm_datasets_links_t* instantiate_sdtm_datasets_links(int include_optional);

#include "test_sdtm_datasets_ref.c"
#include "test_sdtm_product_ref.c"
#include "test_sdtm_datasets_ref.c"


sdtm_datasets_links_t* instantiate_sdtm_datasets_links(int include_optional) {
  sdtm_datasets_links_t* sdtm_datasets_links = NULL;
  if (include_optional) {
    sdtm_datasets_links = sdtm_datasets_links_create(
       // false, not to have infinite recursion
      instantiate_sdtm_datasets_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_datasets_ref(0),
      list_createList()
    );
  } else {
    sdtm_datasets_links = sdtm_datasets_links_create(
      NULL,
      NULL,
      NULL,
      list_createList()
    );
  }

  return sdtm_datasets_links;
}


#ifdef sdtm_datasets_links_MAIN

void test_sdtm_datasets_links(int include_optional) {
    sdtm_datasets_links_t* sdtm_datasets_links_1 = instantiate_sdtm_datasets_links(include_optional);

	cJSON* jsonsdtm_datasets_links_1 = sdtm_datasets_links_convertToJSON(sdtm_datasets_links_1);
	printf("sdtm_datasets_links :\n%s\n", cJSON_Print(jsonsdtm_datasets_links_1));
	sdtm_datasets_links_t* sdtm_datasets_links_2 = sdtm_datasets_links_parseFromJSON(jsonsdtm_datasets_links_1);
	cJSON* jsonsdtm_datasets_links_2 = sdtm_datasets_links_convertToJSON(sdtm_datasets_links_2);
	printf("repeating sdtm_datasets_links:\n%s\n", cJSON_Print(jsonsdtm_datasets_links_2));
}

int main() {
  test_sdtm_datasets_links(1);
  test_sdtm_datasets_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_datasets_links_MAIN
#endif // sdtm_datasets_links_TEST
