#ifndef sdtm_classes_links_TEST
#define sdtm_classes_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_classes_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_classes_links.h"
sdtm_classes_links_t* instantiate_sdtm_classes_links(int include_optional);

#include "test_sdtm_classes_ref.c"
#include "test_sdtm_classes_ref.c"


sdtm_classes_links_t* instantiate_sdtm_classes_links(int include_optional) {
  sdtm_classes_links_t* sdtm_classes_links = NULL;
  if (include_optional) {
    sdtm_classes_links = sdtm_classes_links_create(
       // false, not to have infinite recursion
      instantiate_sdtm_classes_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_classes_ref(0),
      list_createList()
    );
  } else {
    sdtm_classes_links = sdtm_classes_links_create(
      NULL,
      NULL,
      list_createList()
    );
  }

  return sdtm_classes_links;
}


#ifdef sdtm_classes_links_MAIN

void test_sdtm_classes_links(int include_optional) {
    sdtm_classes_links_t* sdtm_classes_links_1 = instantiate_sdtm_classes_links(include_optional);

	cJSON* jsonsdtm_classes_links_1 = sdtm_classes_links_convertToJSON(sdtm_classes_links_1);
	printf("sdtm_classes_links :\n%s\n", cJSON_Print(jsonsdtm_classes_links_1));
	sdtm_classes_links_t* sdtm_classes_links_2 = sdtm_classes_links_parseFromJSON(jsonsdtm_classes_links_1);
	cJSON* jsonsdtm_classes_links_2 = sdtm_classes_links_convertToJSON(sdtm_classes_links_2);
	printf("repeating sdtm_classes_links:\n%s\n", cJSON_Print(jsonsdtm_classes_links_2));
}

int main() {
  test_sdtm_classes_links(1);
  test_sdtm_classes_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_classes_links_MAIN
#endif // sdtm_classes_links_TEST
