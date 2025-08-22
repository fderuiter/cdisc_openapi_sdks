#ifndef root_sdtmig_dataset_variable_links_TEST
#define root_sdtmig_dataset_variable_links_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_sdtmig_dataset_variable_links_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_sdtmig_dataset_variable_links.h"
root_sdtmig_dataset_variable_links_t* instantiate_root_sdtmig_dataset_variable_links(int include_optional);

#include "test_root_sdtmig_dataset_variable_ref.c"


root_sdtmig_dataset_variable_links_t* instantiate_root_sdtmig_dataset_variable_links(int include_optional) {
  root_sdtmig_dataset_variable_links_t* root_sdtmig_dataset_variable_links = NULL;
  if (include_optional) {
    root_sdtmig_dataset_variable_links = root_sdtmig_dataset_variable_links_create(
       // false, not to have infinite recursion
      instantiate_root_sdtmig_dataset_variable_ref(0),
      list_createList()
    );
  } else {
    root_sdtmig_dataset_variable_links = root_sdtmig_dataset_variable_links_create(
      NULL,
      list_createList()
    );
  }

  return root_sdtmig_dataset_variable_links;
}


#ifdef root_sdtmig_dataset_variable_links_MAIN

void test_root_sdtmig_dataset_variable_links(int include_optional) {
    root_sdtmig_dataset_variable_links_t* root_sdtmig_dataset_variable_links_1 = instantiate_root_sdtmig_dataset_variable_links(include_optional);

	cJSON* jsonroot_sdtmig_dataset_variable_links_1 = root_sdtmig_dataset_variable_links_convertToJSON(root_sdtmig_dataset_variable_links_1);
	printf("root_sdtmig_dataset_variable_links :\n%s\n", cJSON_Print(jsonroot_sdtmig_dataset_variable_links_1));
	root_sdtmig_dataset_variable_links_t* root_sdtmig_dataset_variable_links_2 = root_sdtmig_dataset_variable_links_parseFromJSON(jsonroot_sdtmig_dataset_variable_links_1);
	cJSON* jsonroot_sdtmig_dataset_variable_links_2 = root_sdtmig_dataset_variable_links_convertToJSON(root_sdtmig_dataset_variable_links_2);
	printf("repeating root_sdtmig_dataset_variable_links:\n%s\n", cJSON_Print(jsonroot_sdtmig_dataset_variable_links_2));
}

int main() {
  test_root_sdtmig_dataset_variable_links(1);
  test_root_sdtmig_dataset_variable_links(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_sdtmig_dataset_variable_links_MAIN
#endif // root_sdtmig_dataset_variable_links_TEST
