#ifndef cdashig_product_ref_TEST
#define cdashig_product_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_product_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_product_ref.h"
cdashig_product_ref_t* instantiate_cdashig_product_ref(int include_optional);



cdashig_product_ref_t* instantiate_cdashig_product_ref(int include_optional) {
  cdashig_product_ref_t* cdashig_product_ref = NULL;
  if (include_optional) {
    cdashig_product_ref = cdashig_product_ref_create(
      "/mdr/cdashig/2-1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "Implementation Guide"
    );
  } else {
    cdashig_product_ref = cdashig_product_ref_create(
      "/mdr/cdashig/2-1",
      "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1",
      "Implementation Guide"
    );
  }

  return cdashig_product_ref;
}


#ifdef cdashig_product_ref_MAIN

void test_cdashig_product_ref(int include_optional) {
    cdashig_product_ref_t* cdashig_product_ref_1 = instantiate_cdashig_product_ref(include_optional);

	cJSON* jsoncdashig_product_ref_1 = cdashig_product_ref_convertToJSON(cdashig_product_ref_1);
	printf("cdashig_product_ref :\n%s\n", cJSON_Print(jsoncdashig_product_ref_1));
	cdashig_product_ref_t* cdashig_product_ref_2 = cdashig_product_ref_parseFromJSON(jsoncdashig_product_ref_1);
	cJSON* jsoncdashig_product_ref_2 = cdashig_product_ref_convertToJSON(cdashig_product_ref_2);
	printf("repeating cdashig_product_ref:\n%s\n", cJSON_Print(jsoncdashig_product_ref_2));
}

int main() {
  test_cdashig_product_ref(1);
  test_cdashig_product_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_product_ref_MAIN
#endif // cdashig_product_ref_TEST
