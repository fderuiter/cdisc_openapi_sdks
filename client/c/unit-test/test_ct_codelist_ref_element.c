#ifndef ct_codelist_ref_element_TEST
#define ct_codelist_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_codelist_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_codelist_ref_element.h"
ct_codelist_ref_element_t* instantiate_ct_codelist_ref_element(int include_optional);



ct_codelist_ref_element_t* instantiate_ct_codelist_ref_element(int include_optional) {
  ct_codelist_ref_element_t* ct_codelist_ref_element = NULL;
  if (include_optional) {
    ct_codelist_ref_element = ct_codelist_ref_element_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Code List"
    );
  } else {
    ct_codelist_ref_element = ct_codelist_ref_element_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Code List"
    );
  }

  return ct_codelist_ref_element;
}


#ifdef ct_codelist_ref_element_MAIN

void test_ct_codelist_ref_element(int include_optional) {
    ct_codelist_ref_element_t* ct_codelist_ref_element_1 = instantiate_ct_codelist_ref_element(include_optional);

	cJSON* jsonct_codelist_ref_element_1 = ct_codelist_ref_element_convertToJSON(ct_codelist_ref_element_1);
	printf("ct_codelist_ref_element :\n%s\n", cJSON_Print(jsonct_codelist_ref_element_1));
	ct_codelist_ref_element_t* ct_codelist_ref_element_2 = ct_codelist_ref_element_parseFromJSON(jsonct_codelist_ref_element_1);
	cJSON* jsonct_codelist_ref_element_2 = ct_codelist_ref_element_convertToJSON(ct_codelist_ref_element_2);
	printf("repeating ct_codelist_ref_element:\n%s\n", cJSON_Print(jsonct_codelist_ref_element_2));
}

int main() {
  test_ct_codelist_ref_element(1);
  test_ct_codelist_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_codelist_ref_element_MAIN
#endif // ct_codelist_ref_element_TEST
