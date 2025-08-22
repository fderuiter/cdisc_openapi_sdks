#ifndef ct_codelist_TEST
#define ct_codelist_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define ct_codelist_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/ct_codelist.h"
ct_codelist_t* instantiate_ct_codelist(int include_optional);

#include "test_ct_codelist_links.c"


ct_codelist_t* instantiate_ct_codelist(int include_optional) {
  ct_codelist_t* ct_codelist = NULL;
  if (include_optional) {
    ct_codelist = ct_codelist_create(
      "C67154",
      "true",
      "Laboratory Test Name",
      "LBTEST",
      "Terminology used for laboratory test names of the CDISC Study Data Tabulation Model.",
      "CDISC SDTM Laboratory Test Name Terminology",
      ["Laboratory Test Name"],
       // false, not to have infinite recursion
      instantiate_ct_codelist_links(0),
      list_createList()
    );
  } else {
    ct_codelist = ct_codelist_create(
      "C67154",
      "true",
      "Laboratory Test Name",
      "LBTEST",
      "Terminology used for laboratory test names of the CDISC Study Data Tabulation Model.",
      "CDISC SDTM Laboratory Test Name Terminology",
      ["Laboratory Test Name"],
      NULL,
      list_createList()
    );
  }

  return ct_codelist;
}


#ifdef ct_codelist_MAIN

void test_ct_codelist(int include_optional) {
    ct_codelist_t* ct_codelist_1 = instantiate_ct_codelist(include_optional);

	cJSON* jsonct_codelist_1 = ct_codelist_convertToJSON(ct_codelist_1);
	printf("ct_codelist :\n%s\n", cJSON_Print(jsonct_codelist_1));
	ct_codelist_t* ct_codelist_2 = ct_codelist_parseFromJSON(jsonct_codelist_1);
	cJSON* jsonct_codelist_2 = ct_codelist_convertToJSON(ct_codelist_2);
	printf("repeating ct_codelist:\n%s\n", cJSON_Print(jsonct_codelist_2));
}

int main() {
  test_ct_codelist(1);
  test_ct_codelist(0);

  printf("Hello world \n");
  return 0;
}

#endif // ct_codelist_MAIN
#endif // ct_codelist_TEST
