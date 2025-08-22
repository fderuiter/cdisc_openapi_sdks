#ifndef lastupdated_ref_TEST
#define lastupdated_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define lastupdated_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/lastupdated_ref.h"
lastupdated_ref_t* instantiate_lastupdated_ref(int include_optional);



lastupdated_ref_t* instantiate_lastupdated_ref(int include_optional) {
  lastupdated_ref_t* lastupdated_ref = NULL;
  if (include_optional) {
    lastupdated_ref = lastupdated_ref_create(
      "/mdr/lastupdated",
      "Last Update Date of CDISC Library Products",
      "About CDISC Library"
    );
  } else {
    lastupdated_ref = lastupdated_ref_create(
      "/mdr/lastupdated",
      "Last Update Date of CDISC Library Products",
      "About CDISC Library"
    );
  }

  return lastupdated_ref;
}


#ifdef lastupdated_ref_MAIN

void test_lastupdated_ref(int include_optional) {
    lastupdated_ref_t* lastupdated_ref_1 = instantiate_lastupdated_ref(include_optional);

	cJSON* jsonlastupdated_ref_1 = lastupdated_ref_convertToJSON(lastupdated_ref_1);
	printf("lastupdated_ref :\n%s\n", cJSON_Print(jsonlastupdated_ref_1));
	lastupdated_ref_t* lastupdated_ref_2 = lastupdated_ref_parseFromJSON(jsonlastupdated_ref_1);
	cJSON* jsonlastupdated_ref_2 = lastupdated_ref_convertToJSON(lastupdated_ref_2);
	printf("repeating lastupdated_ref:\n%s\n", cJSON_Print(jsonlastupdated_ref_2));
}

int main() {
  test_lastupdated_ref(1);
  test_lastupdated_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // lastupdated_ref_MAIN
#endif // lastupdated_ref_TEST
