#ifndef cdash_class_field_ref_version_TEST
#define cdash_class_field_ref_version_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_field_ref_version_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_field_ref_version.h"
cdash_class_field_ref_version_t* instantiate_cdash_class_field_ref_version(int include_optional);



cdash_class_field_ref_version_t* instantiate_cdash_class_field_ref_version(int include_optional) {
  cdash_class_field_ref_version_t* cdash_class_field_ref_version = NULL;
  if (include_optional) {
    cdash_class_field_ref_version = cdash_class_field_ref_version_create(
      "/mdr/cdash/1-0/classes/Timing/fields/--DAT",
      "Date of Collection",
      "Class Variable"
    );
  } else {
    cdash_class_field_ref_version = cdash_class_field_ref_version_create(
      "/mdr/cdash/1-0/classes/Timing/fields/--DAT",
      "Date of Collection",
      "Class Variable"
    );
  }

  return cdash_class_field_ref_version;
}


#ifdef cdash_class_field_ref_version_MAIN

void test_cdash_class_field_ref_version(int include_optional) {
    cdash_class_field_ref_version_t* cdash_class_field_ref_version_1 = instantiate_cdash_class_field_ref_version(include_optional);

	cJSON* jsoncdash_class_field_ref_version_1 = cdash_class_field_ref_version_convertToJSON(cdash_class_field_ref_version_1);
	printf("cdash_class_field_ref_version :\n%s\n", cJSON_Print(jsoncdash_class_field_ref_version_1));
	cdash_class_field_ref_version_t* cdash_class_field_ref_version_2 = cdash_class_field_ref_version_parseFromJSON(jsoncdash_class_field_ref_version_1);
	cJSON* jsoncdash_class_field_ref_version_2 = cdash_class_field_ref_version_convertToJSON(cdash_class_field_ref_version_2);
	printf("repeating cdash_class_field_ref_version:\n%s\n", cJSON_Print(jsoncdash_class_field_ref_version_2));
}

int main() {
  test_cdash_class_field_ref_version(1);
  test_cdash_class_field_ref_version(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_field_ref_version_MAIN
#endif // cdash_class_field_ref_version_TEST
