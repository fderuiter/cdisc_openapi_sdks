#ifndef sendig_class_ref_subclass_TEST
#define sendig_class_ref_subclass_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_class_ref_subclass_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_class_ref_subclass.h"
sendig_class_ref_subclass_t* instantiate_sendig_class_ref_subclass(int include_optional);



sendig_class_ref_subclass_t* instantiate_sendig_class_ref_subclass(int include_optional) {
  sendig_class_ref_subclass_t* sendig_class_ref_subclass = NULL;
  if (include_optional) {
    sendig_class_ref_subclass = sendig_class_ref_subclass_create(
      "/mdr/sendig/3-1/classes/FindingsAbout",
      "Findings About Observation Class",
      "Class"
    );
  } else {
    sendig_class_ref_subclass = sendig_class_ref_subclass_create(
      "/mdr/sendig/3-1/classes/FindingsAbout",
      "Findings About Observation Class",
      "Class"
    );
  }

  return sendig_class_ref_subclass;
}


#ifdef sendig_class_ref_subclass_MAIN

void test_sendig_class_ref_subclass(int include_optional) {
    sendig_class_ref_subclass_t* sendig_class_ref_subclass_1 = instantiate_sendig_class_ref_subclass(include_optional);

	cJSON* jsonsendig_class_ref_subclass_1 = sendig_class_ref_subclass_convertToJSON(sendig_class_ref_subclass_1);
	printf("sendig_class_ref_subclass :\n%s\n", cJSON_Print(jsonsendig_class_ref_subclass_1));
	sendig_class_ref_subclass_t* sendig_class_ref_subclass_2 = sendig_class_ref_subclass_parseFromJSON(jsonsendig_class_ref_subclass_1);
	cJSON* jsonsendig_class_ref_subclass_2 = sendig_class_ref_subclass_convertToJSON(sendig_class_ref_subclass_2);
	printf("repeating sendig_class_ref_subclass:\n%s\n", cJSON_Print(jsonsendig_class_ref_subclass_2));
}

int main() {
  test_sendig_class_ref_subclass(1);
  test_sendig_class_ref_subclass(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_class_ref_subclass_MAIN
#endif // sendig_class_ref_subclass_TEST
