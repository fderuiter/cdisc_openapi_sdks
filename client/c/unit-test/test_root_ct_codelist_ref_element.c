#ifndef root_ct_codelist_ref_element_TEST
#define root_ct_codelist_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define root_ct_codelist_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/root_ct_codelist_ref_element.h"
root_ct_codelist_ref_element_t* instantiate_root_ct_codelist_ref_element(int include_optional);



root_ct_codelist_ref_element_t* instantiate_root_ct_codelist_ref_element(int include_optional) {
  root_ct_codelist_ref_element_t* root_ct_codelist_ref_element = NULL;
  if (include_optional) {
    root_ct_codelist_ref_element = root_ct_codelist_ref_element_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Code List"
    );
  } else {
    root_ct_codelist_ref_element = root_ct_codelist_ref_element_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Code List"
    );
  }

  return root_ct_codelist_ref_element;
}


#ifdef root_ct_codelist_ref_element_MAIN

void test_root_ct_codelist_ref_element(int include_optional) {
    root_ct_codelist_ref_element_t* root_ct_codelist_ref_element_1 = instantiate_root_ct_codelist_ref_element(include_optional);

	cJSON* jsonroot_ct_codelist_ref_element_1 = root_ct_codelist_ref_element_convertToJSON(root_ct_codelist_ref_element_1);
	printf("root_ct_codelist_ref_element :\n%s\n", cJSON_Print(jsonroot_ct_codelist_ref_element_1));
	root_ct_codelist_ref_element_t* root_ct_codelist_ref_element_2 = root_ct_codelist_ref_element_parseFromJSON(jsonroot_ct_codelist_ref_element_1);
	cJSON* jsonroot_ct_codelist_ref_element_2 = root_ct_codelist_ref_element_convertToJSON(root_ct_codelist_ref_element_2);
	printf("repeating root_ct_codelist_ref_element:\n%s\n", cJSON_Print(jsonroot_ct_codelist_ref_element_2));
}

int main() {
  test_root_ct_codelist_ref_element(1);
  test_root_ct_codelist_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // root_ct_codelist_ref_element_MAIN
#endif // root_ct_codelist_ref_element_TEST
