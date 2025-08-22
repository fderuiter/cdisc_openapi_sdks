#ifndef sdtmig_classes_links_TEST
#define sdtmig_classes_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_classes_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_classes_links.h"
sdtmig_classes_links_t* instantiate_sdtmig_classes_links(int include_optional);

#include "test_sdtmig_classes_ref.c"
#include "test_sdtmig_classes_ref.c"


sdtmig_classes_links_t* instantiate_sdtmig_classes_links(int include_optional) {
  sdtmig_classes_links_t* sdtmig_classes_links = NULL;
  if (include_optional) {
    sdtmig_classes_links = sdtmig_classes_links_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_classes_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_classes_ref(0),
      list_createList()
    );
  } else {
    sdtmig_classes_links = sdtmig_classes_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return sdtmig_classes_links;
}


#ifdef sdtmig_classes_links_MAIN

void test_sdtmig_classes_links(int include_optional) {
    sdtmig_classes_links_t* sdtmig_classes_links_1 = instantiate_sdtmig_classes_links(include_optional);

	cJSON* jsonsdtmig_classes_links_1 = sdtmig_classes_links_convertToJSON(sdtmig_classes_links_1);
	printf("sdtmig_classes_links :\n%s\n", cJSON_Print(jsonsdtmig_classes_links_1));
	sdtmig_classes_links_t* sdtmig_classes_links_2 = sdtmig_classes_links_parseFromJSON(jsonsdtmig_classes_links_1);
	cJSON* jsonsdtmig_classes_links_2 = sdtmig_classes_links_convertToJSON(sdtmig_classes_links_2);
	printf("repeating sdtmig_classes_links:\n%s\n", cJSON_Print(jsonsdtmig_classes_links_2));
}

int main() {
  test_sdtmig_classes_links(1);
  test_sdtmig_classes_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_classes_links_MAIN
#endif // sdtmig_classes_links_TEST
