#ifndef sdtm_dataset_variable_links_TEST
#define sdtm_dataset_variable_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtm_dataset_variable_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtm_dataset_variable_links.h"
sdtm_dataset_variable_links_t* instantiate_sdtm_dataset_variable_links(int include_optional);

#include "test_sdtm_dataset_variable_ref.c"
#include "test_sdtm_product_ref.c"
#include "test_sdtm_dataset_ref.c"
#include "test_root_sdtm_dataset_variable_ref.c"
#include "test_sdtm_dataset_variable_ref.c"


sdtm_dataset_variable_links_t* instantiate_sdtm_dataset_variable_links(int include_optional) {
  sdtm_dataset_variable_links_t* sdtm_dataset_variable_links = NULL;
  if (include_optional) {
    sdtm_dataset_variable_links = sdtm_dataset_variable_links_create(
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variable_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_ref(0),
       // false, not to have infinite recursion
      instantiate_root_sdtm_dataset_variable_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_variable_ref(0)
    );
  } else {
    sdtm_dataset_variable_links = sdtm_dataset_variable_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL
    );
  }

  return sdtm_dataset_variable_links;
}


#ifdef sdtm_dataset_variable_links_MAIN

void test_sdtm_dataset_variable_links(int include_optional) {
    sdtm_dataset_variable_links_t* sdtm_dataset_variable_links_1 = instantiate_sdtm_dataset_variable_links(include_optional);

	cJSON* jsonsdtm_dataset_variable_links_1 = sdtm_dataset_variable_links_convertToJSON(sdtm_dataset_variable_links_1);
	printf("sdtm_dataset_variable_links :\n%s\n", cJSON_Print(jsonsdtm_dataset_variable_links_1));
	sdtm_dataset_variable_links_t* sdtm_dataset_variable_links_2 = sdtm_dataset_variable_links_parseFromJSON(jsonsdtm_dataset_variable_links_1);
	cJSON* jsonsdtm_dataset_variable_links_2 = sdtm_dataset_variable_links_convertToJSON(sdtm_dataset_variable_links_2);
	printf("repeating sdtm_dataset_variable_links:\n%s\n", cJSON_Print(jsonsdtm_dataset_variable_links_2));
}

int main() {
  test_sdtm_dataset_variable_links(1);
  test_sdtm_dataset_variable_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtm_dataset_variable_links_MAIN
#endif // sdtm_dataset_variable_links_TEST
