#ifndef sdtmig_class_links_TEST
#define sdtmig_class_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_class_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_class_links.h"
sdtmig_class_links_t* instantiate_sdtmig_class_links(int include_optional);

#include "test_sdtmig_class_ref.c"
#include "test_sdtm_class_ref.c"
#include "test_sdtmig_product_ref.c"
#include "test_sdtmig_class_ref.c"
#include "test_sdtmig_class_ref.c"


sdtmig_class_links_t* instantiate_sdtmig_class_links(int include_optional) {
  sdtmig_class_links_t* sdtmig_class_links = NULL;
  if (include_optional) {
    sdtmig_class_links = sdtmig_class_links_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_class_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_class_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_class_ref(0),
      list_createList(),
       // false, not to have infinite recursion
      instantiate_sdtmig_class_ref(0)
    );
  } else {
    sdtmig_class_links = sdtmig_class_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      list_createList(),
      NULL
    );
  }

  return sdtmig_class_links;
}


#ifdef sdtmig_class_links_MAIN

void test_sdtmig_class_links(int include_optional) {
    sdtmig_class_links_t* sdtmig_class_links_1 = instantiate_sdtmig_class_links(include_optional);

	cJSON* jsonsdtmig_class_links_1 = sdtmig_class_links_convertToJSON(sdtmig_class_links_1);
	printf("sdtmig_class_links :\n%s\n", cJSON_Print(jsonsdtmig_class_links_1));
	sdtmig_class_links_t* sdtmig_class_links_2 = sdtmig_class_links_parseFromJSON(jsonsdtmig_class_links_1);
	cJSON* jsonsdtmig_class_links_2 = sdtmig_class_links_convertToJSON(sdtmig_class_links_2);
	printf("repeating sdtmig_class_links:\n%s\n", cJSON_Print(jsonsdtmig_class_links_2));
}

int main() {
  test_sdtmig_class_links(1);
  test_sdtmig_class_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_class_links_MAIN
#endif // sdtmig_class_links_TEST
