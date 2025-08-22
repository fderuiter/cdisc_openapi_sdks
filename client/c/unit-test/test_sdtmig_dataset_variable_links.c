#ifndef sdtmig_dataset_variable_links_TEST
#define sdtmig_dataset_variable_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variable_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variable_links.h"
sdtmig_dataset_variable_links_t* instantiate_sdtmig_dataset_variable_links(int include_optional);

#include "test_sdtmig_dataset_variable_ref.c"
#include "test_sdtm_class_variable_ref.c"
#include "test_sdtm_dataset_variable_ref.c"
#include "test_sdtmig_product_ref.c"
#include "test_sdtmig_dataset_ref.c"
#include "test_root_sdtmig_dataset_variable_ref.c"
#include "test_sdtmig_dataset_variable_ref.c"


sdtmig_dataset_variable_links_t* instantiate_sdtmig_dataset_variable_links(int include_optional) {
  sdtmig_dataset_variable_links_t* sdtmig_dataset_variable_links = NULL;
  if (include_optional) {
    sdtmig_dataset_variable_links = sdtmig_dataset_variable_links_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_variable_ref(0),
      list_createList(),
       // false, not to have infinite recursion
      instantiate_sdtm_class_variable_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variable_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_ref(0),
       // false, not to have infinite recursion
      instantiate_root_sdtmig_dataset_variable_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_variable_ref(0)
    );
  } else {
    sdtmig_dataset_variable_links = sdtmig_dataset_variable_links_create(
      NULL,
      list_createList(),
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return sdtmig_dataset_variable_links;
}


#ifdef sdtmig_dataset_variable_links_MAIN

void test_sdtmig_dataset_variable_links(int include_optional) {
    sdtmig_dataset_variable_links_t* sdtmig_dataset_variable_links_1 = instantiate_sdtmig_dataset_variable_links(include_optional);

	cJSON* jsonsdtmig_dataset_variable_links_1 = sdtmig_dataset_variable_links_convertToJSON(sdtmig_dataset_variable_links_1);
	printf("sdtmig_dataset_variable_links :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_links_1));
	sdtmig_dataset_variable_links_t* sdtmig_dataset_variable_links_2 = sdtmig_dataset_variable_links_parseFromJSON(jsonsdtmig_dataset_variable_links_1);
	cJSON* jsonsdtmig_dataset_variable_links_2 = sdtmig_dataset_variable_links_convertToJSON(sdtmig_dataset_variable_links_2);
	printf("repeating sdtmig_dataset_variable_links:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variable_links_2));
}

int main() {
  test_sdtmig_dataset_variable_links(1);
  test_sdtmig_dataset_variable_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variable_links_MAIN
#endif // sdtmig_dataset_variable_links_TEST
