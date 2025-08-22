#ifndef ct_packages_ref_TEST
#define ct_packages_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_packages_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_packages_ref.h"
ct_packages_ref_t* instantiate_ct_packages_ref(int include_optional);



ct_packages_ref_t* instantiate_ct_packages_ref(int include_optional) {
  ct_packages_ref_t* ct_packages_ref = NULL;
  if (include_optional) {
    ct_packages_ref = ct_packages_ref_create(
      "/mdr/ct/packages",
      "Product Group Terminology",
      "Controlled Terminology Package List"
    );
  } else {
    ct_packages_ref = ct_packages_ref_create(
      "/mdr/ct/packages",
      "Product Group Terminology",
      "Controlled Terminology Package List"
    );
  }

  return ct_packages_ref;
}


#ifdef ct_packages_ref_MAIN

void test_ct_packages_ref(int include_optional) {
    ct_packages_ref_t* ct_packages_ref_1 = instantiate_ct_packages_ref(include_optional);

	cJSON* jsonct_packages_ref_1 = ct_packages_ref_convertToJSON(ct_packages_ref_1);
	printf("ct_packages_ref :\n%s\n", cJSON_Print(jsonct_packages_ref_1));
	ct_packages_ref_t* ct_packages_ref_2 = ct_packages_ref_parseFromJSON(jsonct_packages_ref_1);
	cJSON* jsonct_packages_ref_2 = ct_packages_ref_convertToJSON(ct_packages_ref_2);
	printf("repeating ct_packages_ref:\n%s\n", cJSON_Print(jsonct_packages_ref_2));
}

int main() {
  test_ct_packages_ref(1);
  test_ct_packages_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_packages_ref_MAIN
#endif // ct_packages_ref_TEST
