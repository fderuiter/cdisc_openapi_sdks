#ifndef ct_codelist_ref_version_TEST
#define ct_codelist_ref_version_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_codelist_ref_version_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_codelist_ref_version.h"
ct_codelist_ref_version_t* instantiate_ct_codelist_ref_version(int include_optional);



ct_codelist_ref_version_t* instantiate_ct_codelist_ref_version(int include_optional) {
  ct_codelist_ref_version_t* ct_codelist_ref_version = NULL;
  if (include_optional) {
    ct_codelist_ref_version = ct_codelist_ref_version_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Code List"
    );
  } else {
    ct_codelist_ref_version = ct_codelist_ref_version_create(
      "/mdr/ct/packages/sdtmct-2019-12-20/codelists/C67154",
      "CDISC SDTM Laboratory Test Name Terminology",
      "Code List"
    );
  }

  return ct_codelist_ref_version;
}


#ifdef ct_codelist_ref_version_MAIN

void test_ct_codelist_ref_version(int include_optional) {
    ct_codelist_ref_version_t* ct_codelist_ref_version_1 = instantiate_ct_codelist_ref_version(include_optional);

	cJSON* jsonct_codelist_ref_version_1 = ct_codelist_ref_version_convertToJSON(ct_codelist_ref_version_1);
	printf("ct_codelist_ref_version :\n%s\n", cJSON_Print(jsonct_codelist_ref_version_1));
	ct_codelist_ref_version_t* ct_codelist_ref_version_2 = ct_codelist_ref_version_parseFromJSON(jsonct_codelist_ref_version_1);
	cJSON* jsonct_codelist_ref_version_2 = ct_codelist_ref_version_convertToJSON(ct_codelist_ref_version_2);
	printf("repeating ct_codelist_ref_version:\n%s\n", cJSON_Print(jsonct_codelist_ref_version_2));
}

int main() {
  test_ct_codelist_ref_version(1);
  test_ct_codelist_ref_version(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_codelist_ref_version_MAIN
#endif // ct_codelist_ref_version_TEST
