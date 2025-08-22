#ifndef ct_package_ref_TEST
#define ct_package_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package_ref.h"
ct_package_ref_t* instantiate_ct_package_ref(int include_optional);



ct_package_ref_t* instantiate_ct_package_ref(int include_optional) {
  ct_package_ref_t* ct_package_ref = NULL;
  if (include_optional) {
    ct_package_ref = ct_package_ref_create(
      "/mdr/ct/packages/sdtmct-2019-12-20",
      "SDTM Controlled Terminology Package 40 Effective 2019-12-20",
      "Terminology"
    );
  } else {
    ct_package_ref = ct_package_ref_create(
      "/mdr/ct/packages/sdtmct-2019-12-20",
      "SDTM Controlled Terminology Package 40 Effective 2019-12-20",
      "Terminology"
    );
  }

  return ct_package_ref;
}


#ifdef ct_package_ref_MAIN

void test_ct_package_ref(int include_optional) {
    ct_package_ref_t* ct_package_ref_1 = instantiate_ct_package_ref(include_optional);

	cJSON* jsonct_package_ref_1 = ct_package_ref_convertToJSON(ct_package_ref_1);
	printf("ct_package_ref :\n%s\n", cJSON_Print(jsonct_package_ref_1));
	ct_package_ref_t* ct_package_ref_2 = ct_package_ref_parseFromJSON(jsonct_package_ref_1);
	cJSON* jsonct_package_ref_2 = ct_package_ref_convertToJSON(ct_package_ref_2);
	printf("repeating ct_package_ref:\n%s\n", cJSON_Print(jsonct_package_ref_2));
}

int main() {
  test_ct_package_ref(1);
  test_ct_package_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_ref_MAIN
#endif // ct_package_ref_TEST
