#ifndef sdtmig_dataset_variables_links_TEST
#define sdtmig_dataset_variables_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sdtmig_dataset_variables_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sdtmig_dataset_variables_links.h"
sdtmig_dataset_variables_links_t* instantiate_sdtmig_dataset_variables_links(int include_optional);

#include "test_sdtmig_dataset_variables_ref.c"
#include "test_sdtm_dataset_ref.c"
#include "test_sdtmig_product_ref.c"
#include "test_sdtmig_class_ref.c"
#include "test_sdtmig_dataset_variables_ref.c"


sdtmig_dataset_variables_links_t* instantiate_sdtmig_dataset_variables_links(int include_optional) {
  sdtmig_dataset_variables_links_t* sdtmig_dataset_variables_links = NULL;
  if (include_optional) {
    sdtmig_dataset_variables_links = sdtmig_dataset_variables_links_create(
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_variables_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtm_dataset_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_product_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_class_ref(0),
       // false, not to have infinite recursion
      instantiate_sdtmig_dataset_variables_ref(0),
      list_createList()
    );
  } else {
    sdtmig_dataset_variables_links = sdtmig_dataset_variables_links_create(
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      list_createList()
    );
  }

  return sdtmig_dataset_variables_links;
}


#ifdef sdtmig_dataset_variables_links_MAIN

void test_sdtmig_dataset_variables_links(int include_optional) {
    sdtmig_dataset_variables_links_t* sdtmig_dataset_variables_links_1 = instantiate_sdtmig_dataset_variables_links(include_optional);

	cJSON* jsonsdtmig_dataset_variables_links_1 = sdtmig_dataset_variables_links_convertToJSON(sdtmig_dataset_variables_links_1);
	printf("sdtmig_dataset_variables_links :\n%s\n", cJSON_Print(jsonsdtmig_dataset_variables_links_1));
	sdtmig_dataset_variables_links_t* sdtmig_dataset_variables_links_2 = sdtmig_dataset_variables_links_parseFromJSON(jsonsdtmig_dataset_variables_links_1);
	cJSON* jsonsdtmig_dataset_variables_links_2 = sdtmig_dataset_variables_links_convertToJSON(sdtmig_dataset_variables_links_2);
	printf("repeating sdtmig_dataset_variables_links:\n%s\n", cJSON_Print(jsonsdtmig_dataset_variables_links_2));
}

int main() {
  test_sdtmig_dataset_variables_links(1);
  test_sdtmig_dataset_variables_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // sdtmig_dataset_variables_links_MAIN
#endif // sdtmig_dataset_variables_links_TEST
