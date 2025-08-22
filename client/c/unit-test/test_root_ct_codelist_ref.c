#ifndef root_ct_codelist_ref_TEST
#define root_ct_codelist_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_ct_codelist_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_ct_codelist_ref.h"
root_ct_codelist_ref_t* instantiate_root_ct_codelist_ref(int include_optional);



root_ct_codelist_ref_t* instantiate_root_ct_codelist_ref(int include_optional) {
  root_ct_codelist_ref_t* root_ct_codelist_ref = NULL;
  if (include_optional) {
    root_ct_codelist_ref = root_ct_codelist_ref_create(
      "/mdr/root/ct/sdtmct/codelists/C67154",
      "Version-agnostic anchor resource for codelist C67154",
      "Root Value Domain"
    );
  } else {
    root_ct_codelist_ref = root_ct_codelist_ref_create(
      "/mdr/root/ct/sdtmct/codelists/C67154",
      "Version-agnostic anchor resource for codelist C67154",
      "Root Value Domain"
    );
  }

  return root_ct_codelist_ref;
}


#ifdef root_ct_codelist_ref_MAIN

void test_root_ct_codelist_ref(int include_optional) {
    root_ct_codelist_ref_t* root_ct_codelist_ref_1 = instantiate_root_ct_codelist_ref(include_optional);

	cJSON* jsonroot_ct_codelist_ref_1 = root_ct_codelist_ref_convertToJSON(root_ct_codelist_ref_1);
	printf("root_ct_codelist_ref :\n%s\n", cJSON_Print(jsonroot_ct_codelist_ref_1));
	root_ct_codelist_ref_t* root_ct_codelist_ref_2 = root_ct_codelist_ref_parseFromJSON(jsonroot_ct_codelist_ref_1);
	cJSON* jsonroot_ct_codelist_ref_2 = root_ct_codelist_ref_convertToJSON(root_ct_codelist_ref_2);
	printf("repeating root_ct_codelist_ref:\n%s\n", cJSON_Print(jsonroot_ct_codelist_ref_2));
}

int main() {
  test_root_ct_codelist_ref(1);
  test_root_ct_codelist_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_ct_codelist_ref_MAIN
#endif // root_ct_codelist_ref_TEST
