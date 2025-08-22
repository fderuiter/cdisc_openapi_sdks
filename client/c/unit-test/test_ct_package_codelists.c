#ifndef ct_package_codelists_TEST
#define ct_package_codelists_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_codelists_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package_codelists.h"
ct_package_codelists_t* instantiate_ct_package_codelists(int include_optional);

#include "test_ct_package_codelists_links.c"


ct_package_codelists_t* instantiate_ct_package_codelists(int include_optional) {
  ct_package_codelists_t* ct_package_codelists = NULL;
  if (include_optional) {
    ct_package_codelists = ct_package_codelists_create(
      "SDTM CT 2019-12-20",
      "SDTM Controlled Terminology Package 40 Effective 2019-12-20",
      "CDISC Controlled Terminology for SDTM is the set of CDISC-developed or CDISC-adopted standard expressions (values) used with data items within CDISC-defined SDTM datasets.",
      "SDTM Controlled Terminology developed by the CDISC Terminology Team in collaboration with the National Cancer Institute's Enterprise Vocabulary Services (EVS)",
      "2019-12-20",
      "Final",
      "TODO",
       // false, not to have infinite recursion
      instantiate_ct_package_codelists_links(0)
    );
  } else {
    ct_package_codelists = ct_package_codelists_create(
      "SDTM CT 2019-12-20",
      "SDTM Controlled Terminology Package 40 Effective 2019-12-20",
      "CDISC Controlled Terminology for SDTM is the set of CDISC-developed or CDISC-adopted standard expressions (values) used with data items within CDISC-defined SDTM datasets.",
      "SDTM Controlled Terminology developed by the CDISC Terminology Team in collaboration with the National Cancer Institute's Enterprise Vocabulary Services (EVS)",
      "2019-12-20",
      "Final",
      "TODO",
      NULL
    );
  }

  return ct_package_codelists;
}


#ifdef ct_package_codelists_MAIN

void test_ct_package_codelists(int include_optional) {
    ct_package_codelists_t* ct_package_codelists_1 = instantiate_ct_package_codelists(include_optional);

	cJSON* jsonct_package_codelists_1 = ct_package_codelists_convertToJSON(ct_package_codelists_1);
	printf("ct_package_codelists :\n%s\n", cJSON_Print(jsonct_package_codelists_1));
	ct_package_codelists_t* ct_package_codelists_2 = ct_package_codelists_parseFromJSON(jsonct_package_codelists_1);
	cJSON* jsonct_package_codelists_2 = ct_package_codelists_convertToJSON(ct_package_codelists_2);
	printf("repeating ct_package_codelists:\n%s\n", cJSON_Print(jsonct_package_codelists_2));
}

int main() {
  test_ct_package_codelists(1);
  test_ct_package_codelists(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_codelists_MAIN
#endif // ct_package_codelists_TEST
