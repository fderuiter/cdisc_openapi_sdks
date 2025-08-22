#ifndef ct_package_TEST
#define ct_package_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_package_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_package.h"
ct_package_t* instantiate_ct_package(int include_optional);

#include "test_ct_package_links.c"


ct_package_t* instantiate_ct_package(int include_optional) {
  ct_package_t* ct_package = NULL;
  if (include_optional) {
    ct_package = ct_package_create(
      "SDTM CT 2019-12-20",
      "SDTM Controlled Terminology Package 40 Effective 2019-12-20",
      "CDISC Controlled Terminology for SDTM is the set of CDISC-developed or CDISC-adopted standard expressions (values) used with data items within CDISC-defined SDTM datasets.",
      "SDTM Controlled Terminology developed by the CDISC Terminology Team in collaboration with the National Cancer Institute's Enterprise Vocabulary Services (EVS)",
      "2019-12-20",
      "Final",
      "2019-12-20",
       // false, not to have infinite recursion
      instantiate_ct_package_links(0),
      list_createList()
    );
  } else {
    ct_package = ct_package_create(
      "SDTM CT 2019-12-20",
      "SDTM Controlled Terminology Package 40 Effective 2019-12-20",
      "CDISC Controlled Terminology for SDTM is the set of CDISC-developed or CDISC-adopted standard expressions (values) used with data items within CDISC-defined SDTM datasets.",
      "SDTM Controlled Terminology developed by the CDISC Terminology Team in collaboration with the National Cancer Institute's Enterprise Vocabulary Services (EVS)",
      "2019-12-20",
      "Final",
      "2019-12-20",
      NULL,
      list_createList()
    );
  }

  return ct_package;
}


#ifdef ct_package_MAIN

void test_ct_package(int include_optional) {
    ct_package_t* ct_package_1 = instantiate_ct_package(include_optional);

	cJSON* jsonct_package_1 = ct_package_convertToJSON(ct_package_1);
	printf("ct_package :\n%s\n", cJSON_Print(jsonct_package_1));
	ct_package_t* ct_package_2 = ct_package_parseFromJSON(jsonct_package_1);
	cJSON* jsonct_package_2 = ct_package_convertToJSON(ct_package_2);
	printf("repeating ct_package:\n%s\n", cJSON_Print(jsonct_package_2));
}

int main() {
  test_ct_package(1);
  test_ct_package(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_package_MAIN
#endif // ct_package_TEST
