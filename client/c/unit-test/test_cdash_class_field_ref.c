#ifndef cdash_class_field_ref_TEST
#define cdash_class_field_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_field_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_field_ref.h"
cdash_class_field_ref_t* instantiate_cdash_class_field_ref(int include_optional);



cdash_class_field_ref_t* instantiate_cdash_class_field_ref(int include_optional) {
  cdash_class_field_ref_t* cdash_class_field_ref = NULL;
  if (include_optional) {
    cdash_class_field_ref = cdash_class_field_ref_create(
      "/mdr/cdash/1-1/classes/Timing/fields/--DAT",
      "Collection Date",
      "Class Variable"
    );
  } else {
    cdash_class_field_ref = cdash_class_field_ref_create(
      "/mdr/cdash/1-1/classes/Timing/fields/--DAT",
      "Collection Date",
      "Class Variable"
    );
  }

  return cdash_class_field_ref;
}


#ifdef cdash_class_field_ref_MAIN

void test_cdash_class_field_ref(int include_optional) {
    cdash_class_field_ref_t* cdash_class_field_ref_1 = instantiate_cdash_class_field_ref(include_optional);

	cJSON* jsoncdash_class_field_ref_1 = cdash_class_field_ref_convertToJSON(cdash_class_field_ref_1);
	printf("cdash_class_field_ref :\n%s\n", cJSON_Print(jsoncdash_class_field_ref_1));
	cdash_class_field_ref_t* cdash_class_field_ref_2 = cdash_class_field_ref_parseFromJSON(jsoncdash_class_field_ref_1);
	cJSON* jsoncdash_class_field_ref_2 = cdash_class_field_ref_convertToJSON(cdash_class_field_ref_2);
	printf("repeating cdash_class_field_ref:\n%s\n", cJSON_Print(jsoncdash_class_field_ref_2));
}

int main() {
  test_cdash_class_field_ref(1);
  test_cdash_class_field_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_field_ref_MAIN
#endif // cdash_class_field_ref_TEST
