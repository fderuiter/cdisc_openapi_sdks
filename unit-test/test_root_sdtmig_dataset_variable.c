#ifndef root_sdtmig_dataset_variable_TEST
#define root_sdtmig_dataset_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_sdtmig_dataset_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_sdtmig_dataset_variable.h"
root_sdtmig_dataset_variable_t* instantiate_root_sdtmig_dataset_variable(int include_optional);

#include "test_root_sdtmig_dataset_variable_links.c"


root_sdtmig_dataset_variable_t* instantiate_root_sdtmig_dataset_variable(int include_optional) {
  root_sdtmig_dataset_variable_t* root_sdtmig_dataset_variable = NULL;
  if (include_optional) {
    root_sdtmig_dataset_variable = root_sdtmig_dataset_variable_create(
       // false, not to have infinite recursion
      instantiate_root_sdtmig_dataset_variable_links(0)
    );
  } else {
    root_sdtmig_dataset_variable = root_sdtmig_dataset_variable_create(
      NULL
    );
  }

  return root_sdtmig_dataset_variable;
}


#ifdef root_sdtmig_dataset_variable_MAIN

void test_root_sdtmig_dataset_variable(int include_optional) {
    root_sdtmig_dataset_variable_t* root_sdtmig_dataset_variable_1 = instantiate_root_sdtmig_dataset_variable(include_optional);

	cJSON* jsonroot_sdtmig_dataset_variable_1 = root_sdtmig_dataset_variable_convertToJSON(root_sdtmig_dataset_variable_1);
	printf("root_sdtmig_dataset_variable :\n%s\n", cJSON_Print(jsonroot_sdtmig_dataset_variable_1));
	root_sdtmig_dataset_variable_t* root_sdtmig_dataset_variable_2 = root_sdtmig_dataset_variable_parseFromJSON(jsonroot_sdtmig_dataset_variable_1);
	cJSON* jsonroot_sdtmig_dataset_variable_2 = root_sdtmig_dataset_variable_convertToJSON(root_sdtmig_dataset_variable_2);
	printf("repeating root_sdtmig_dataset_variable:\n%s\n", cJSON_Print(jsonroot_sdtmig_dataset_variable_2));
}

int main() {
  test_root_sdtmig_dataset_variable(1);
  test_root_sdtmig_dataset_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_sdtmig_dataset_variable_MAIN
#endif // root_sdtmig_dataset_variable_TEST
