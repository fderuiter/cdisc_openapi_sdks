#ifndef ct_codelist_terms_TEST
#define ct_codelist_terms_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_codelist_terms_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_codelist_terms.h"
ct_codelist_terms_t* instantiate_ct_codelist_terms(int include_optional);

#include "test_ct_codelist_terms_links.c"


ct_codelist_terms_t* instantiate_ct_codelist_terms(int include_optional) {
  ct_codelist_terms_t* ct_codelist_terms = NULL;
  if (include_optional) {
    ct_codelist_terms = ct_codelist_terms_create(
      "C67154",
      "true",
      "Laboratory Test Name",
      "LBTEST",
      "Terminology used for laboratory test names of the CDISC Study Data Tabulation Model.",
      "CDISC SDTM Laboratory Test Name Terminology",
      ["Laboratory Test Name"],
       // false, not to have infinite recursion
      instantiate_ct_codelist_terms_links(0)
    );
  } else {
    ct_codelist_terms = ct_codelist_terms_create(
      "C67154",
      "true",
      "Laboratory Test Name",
      "LBTEST",
      "Terminology used for laboratory test names of the CDISC Study Data Tabulation Model.",
      "CDISC SDTM Laboratory Test Name Terminology",
      ["Laboratory Test Name"],
      NULL
    );
  }

  return ct_codelist_terms;
}


#ifdef ct_codelist_terms_MAIN

void test_ct_codelist_terms(int include_optional) {
    ct_codelist_terms_t* ct_codelist_terms_1 = instantiate_ct_codelist_terms(include_optional);

	cJSON* jsonct_codelist_terms_1 = ct_codelist_terms_convertToJSON(ct_codelist_terms_1);
	printf("ct_codelist_terms :\n%s\n", cJSON_Print(jsonct_codelist_terms_1));
	ct_codelist_terms_t* ct_codelist_terms_2 = ct_codelist_terms_parseFromJSON(jsonct_codelist_terms_1);
	cJSON* jsonct_codelist_terms_2 = ct_codelist_terms_convertToJSON(ct_codelist_terms_2);
	printf("repeating ct_codelist_terms:\n%s\n", cJSON_Print(jsonct_codelist_terms_2));
}

int main() {
  test_ct_codelist_terms(1);
  test_ct_codelist_terms(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_codelist_terms_MAIN
#endif // ct_codelist_terms_TEST
