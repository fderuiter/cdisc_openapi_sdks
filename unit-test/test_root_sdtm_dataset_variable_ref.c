#ifndef root_sdtm_dataset_variable_ref_TEST
#define root_sdtm_dataset_variable_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_sdtm_dataset_variable_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_sdtm_dataset_variable_ref.h"
root_sdtm_dataset_variable_ref_t* instantiate_root_sdtm_dataset_variable_ref(int include_optional);



root_sdtm_dataset_variable_ref_t* instantiate_root_sdtm_dataset_variable_ref(int include_optional) {
  root_sdtm_dataset_variable_ref_t* root_sdtm_dataset_variable_ref = NULL;
  if (include_optional) {
    root_sdtm_dataset_variable_ref = root_sdtm_dataset_variable_ref_create(
      "/mdr/root/sdtm/datasets/DM/variables/SUBJID",
      "Version-agnostic anchor resource for SDTM variable DM.SUBJID",
      "Root Data Element"
    );
  } else {
    root_sdtm_dataset_variable_ref = root_sdtm_dataset_variable_ref_create(
      "/mdr/root/sdtm/datasets/DM/variables/SUBJID",
      "Version-agnostic anchor resource for SDTM variable DM.SUBJID",
      "Root Data Element"
    );
  }

  return root_sdtm_dataset_variable_ref;
}


#ifdef root_sdtm_dataset_variable_ref_MAIN

void test_root_sdtm_dataset_variable_ref(int include_optional) {
    root_sdtm_dataset_variable_ref_t* root_sdtm_dataset_variable_ref_1 = instantiate_root_sdtm_dataset_variable_ref(include_optional);

	cJSON* jsonroot_sdtm_dataset_variable_ref_1 = root_sdtm_dataset_variable_ref_convertToJSON(root_sdtm_dataset_variable_ref_1);
	printf("root_sdtm_dataset_variable_ref :\n%s\n", cJSON_Print(jsonroot_sdtm_dataset_variable_ref_1));
	root_sdtm_dataset_variable_ref_t* root_sdtm_dataset_variable_ref_2 = root_sdtm_dataset_variable_ref_parseFromJSON(jsonroot_sdtm_dataset_variable_ref_1);
	cJSON* jsonroot_sdtm_dataset_variable_ref_2 = root_sdtm_dataset_variable_ref_convertToJSON(root_sdtm_dataset_variable_ref_2);
	printf("repeating root_sdtm_dataset_variable_ref:\n%s\n", cJSON_Print(jsonroot_sdtm_dataset_variable_ref_2));
}

int main() {
  test_root_sdtm_dataset_variable_ref(1);
  test_root_sdtm_dataset_variable_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_sdtm_dataset_variable_ref_MAIN
#endif // root_sdtm_dataset_variable_ref_TEST
