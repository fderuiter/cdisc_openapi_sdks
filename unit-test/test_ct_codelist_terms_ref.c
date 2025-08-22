#ifndef ct_codelist_terms_ref_TEST
#define ct_codelist_terms_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_codelist_terms_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_codelist_terms_ref.h"
ct_codelist_terms_ref_t* instantiate_ct_codelist_terms_ref(int include_optional);



ct_codelist_terms_ref_t* instantiate_ct_codelist_terms_ref(int include_optional) {
  ct_codelist_terms_ref_t* ct_codelist_terms_ref = NULL;
  if (include_optional) {
    ct_codelist_terms_ref = ct_codelist_terms_ref_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154/terms",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Codelist Term List"
    );
  } else {
    ct_codelist_terms_ref = ct_codelist_terms_ref_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154/terms",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Codelist Term List"
    );
  }

  return ct_codelist_terms_ref;
}


#ifdef ct_codelist_terms_ref_MAIN

void test_ct_codelist_terms_ref(int include_optional) {
    ct_codelist_terms_ref_t* ct_codelist_terms_ref_1 = instantiate_ct_codelist_terms_ref(include_optional);

	cJSON* jsonct_codelist_terms_ref_1 = ct_codelist_terms_ref_convertToJSON(ct_codelist_terms_ref_1);
	printf("ct_codelist_terms_ref :\n%s\n", cJSON_Print(jsonct_codelist_terms_ref_1));
	ct_codelist_terms_ref_t* ct_codelist_terms_ref_2 = ct_codelist_terms_ref_parseFromJSON(jsonct_codelist_terms_ref_1);
	cJSON* jsonct_codelist_terms_ref_2 = ct_codelist_terms_ref_convertToJSON(ct_codelist_terms_ref_2);
	printf("repeating ct_codelist_terms_ref:\n%s\n", cJSON_Print(jsonct_codelist_terms_ref_2));
}

int main() {
  test_ct_codelist_terms_ref(1);
  test_ct_codelist_terms_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_codelist_terms_ref_MAIN
#endif // ct_codelist_terms_ref_TEST
