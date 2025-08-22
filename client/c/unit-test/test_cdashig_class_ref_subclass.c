#ifndef cdashig_class_ref_subclass_TEST
#define cdashig_class_ref_subclass_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_ref_subclass_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_ref_subclass.h"
cdashig_class_ref_subclass_t* instantiate_cdashig_class_ref_subclass(int include_optional);



cdashig_class_ref_subclass_t* instantiate_cdashig_class_ref_subclass(int include_optional) {
  cdashig_class_ref_subclass_t* cdashig_class_ref_subclass = NULL;
  if (include_optional) {
    cdashig_class_ref_subclass = cdashig_class_ref_subclass_create(
      "/mdr/cdashig/2-1/classes/SubClass",
      "A Sub-Class",
      "Class"
    );
  } else {
    cdashig_class_ref_subclass = cdashig_class_ref_subclass_create(
      "/mdr/cdashig/2-1/classes/SubClass",
      "A Sub-Class",
      "Class"
    );
  }

  return cdashig_class_ref_subclass;
}


#ifdef cdashig_class_ref_subclass_MAIN

void test_cdashig_class_ref_subclass(int include_optional) {
    cdashig_class_ref_subclass_t* cdashig_class_ref_subclass_1 = instantiate_cdashig_class_ref_subclass(include_optional);

	cJSON* jsoncdashig_class_ref_subclass_1 = cdashig_class_ref_subclass_convertToJSON(cdashig_class_ref_subclass_1);
	printf("cdashig_class_ref_subclass :\n%s\n", cJSON_Print(jsoncdashig_class_ref_subclass_1));
	cdashig_class_ref_subclass_t* cdashig_class_ref_subclass_2 = cdashig_class_ref_subclass_parseFromJSON(jsoncdashig_class_ref_subclass_1);
	cJSON* jsoncdashig_class_ref_subclass_2 = cdashig_class_ref_subclass_convertToJSON(cdashig_class_ref_subclass_2);
	printf("repeating cdashig_class_ref_subclass:\n%s\n", cJSON_Print(jsoncdashig_class_ref_subclass_2));
}

int main() {
  test_cdashig_class_ref_subclass(1);
  test_cdashig_class_ref_subclass(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_ref_subclass_MAIN
#endif // cdashig_class_ref_subclass_TEST
