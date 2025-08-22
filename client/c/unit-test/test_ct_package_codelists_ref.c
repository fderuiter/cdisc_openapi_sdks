#ifndef ct_package_codelists_ref_TEST
#define ct_package_codelists_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_codelists_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package_codelists_ref.h"
ct_package_codelists_ref_t* instantiate_ct_package_codelists_ref(int include_optional);



ct_package_codelists_ref_t* instantiate_ct_package_codelists_ref(int include_optional) {
  ct_package_codelists_ref_t* ct_package_codelists_ref = NULL;
  if (include_optional) {
    ct_package_codelists_ref = ct_package_codelists_ref_create(
      "/mdr/ct/packages/sdtmct-2019-09-27/codelists",
      "SDTM Controlled Terminology Package 39 Effective 2019-09-27",
      "Controlled Terminology Package Codelist List"
    );
  } else {
    ct_package_codelists_ref = ct_package_codelists_ref_create(
      "/mdr/ct/packages/sdtmct-2019-09-27/codelists",
      "SDTM Controlled Terminology Package 39 Effective 2019-09-27",
      "Controlled Terminology Package Codelist List"
    );
  }

  return ct_package_codelists_ref;
}


#ifdef ct_package_codelists_ref_MAIN

void test_ct_package_codelists_ref(int include_optional) {
    ct_package_codelists_ref_t* ct_package_codelists_ref_1 = instantiate_ct_package_codelists_ref(include_optional);

	cJSON* jsonct_package_codelists_ref_1 = ct_package_codelists_ref_convertToJSON(ct_package_codelists_ref_1);
	printf("ct_package_codelists_ref :\n%s\n", cJSON_Print(jsonct_package_codelists_ref_1));
	ct_package_codelists_ref_t* ct_package_codelists_ref_2 = ct_package_codelists_ref_parseFromJSON(jsonct_package_codelists_ref_1);
	cJSON* jsonct_package_codelists_ref_2 = ct_package_codelists_ref_convertToJSON(ct_package_codelists_ref_2);
	printf("repeating ct_package_codelists_ref:\n%s\n", cJSON_Print(jsonct_package_codelists_ref_2));
}

int main() {
  test_ct_package_codelists_ref(1);
  test_ct_package_codelists_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_codelists_ref_MAIN
#endif // ct_package_codelists_ref_TEST
