#ifndef sdtm_class_variables_links_TEST
#define sdtm_class_variables_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_class_variables_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_class_variables_links.h"
sdtm_class_variables_links_t* instantiate_sdtm_class_variables_links(int include_optional);

#include "test_sdtm_class_variables_ref.c"
#include "test_sdtm_product_ref.c"
#include "test_sdtm_class_variables_ref.c"


sdtm_class_variables_links_t* instantiate_sdtm_class_variables_links(int include_optional) {
  sdtm_class_variables_links_t* sdtm_class_variables_links = NULL;
  if (include_optional) {
    sdtm_class_variables_links = sdtm_class_variables_links_create(
       // false, not to have infinite recursion
      instantiate_sdtm_class_variables_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_class_variables_ref(0),
      list_createList()
    );
  } else {
    sdtm_class_variables_links = sdtm_class_variables_links_create(
      NULL,
      NULL,
      NULL,
      list_createList()
    );
  }

  return sdtm_class_variables_links;
}


#ifdef sdtm_class_variables_links_MAIN

void test_sdtm_class_variables_links(int include_optional) {
    sdtm_class_variables_links_t* sdtm_class_variables_links_1 = instantiate_sdtm_class_variables_links(include_optional);

	cJSON* jsonsdtm_class_variables_links_1 = sdtm_class_variables_links_convertToJSON(sdtm_class_variables_links_1);
	printf("sdtm_class_variables_links :\n%s\n", cJSON_Print(jsonsdtm_class_variables_links_1));
	sdtm_class_variables_links_t* sdtm_class_variables_links_2 = sdtm_class_variables_links_parseFromJSON(jsonsdtm_class_variables_links_1);
	cJSON* jsonsdtm_class_variables_links_2 = sdtm_class_variables_links_convertToJSON(sdtm_class_variables_links_2);
	printf("repeating sdtm_class_variables_links:\n%s\n", cJSON_Print(jsonsdtm_class_variables_links_2));
}

int main() {
  test_sdtm_class_variables_links(1);
  test_sdtm_class_variables_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_class_variables_links_MAIN
#endif // sdtm_class_variables_links_TEST
