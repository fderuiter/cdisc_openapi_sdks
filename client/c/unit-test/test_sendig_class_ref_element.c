#ifndef sendig_class_ref_element_TEST
#define sendig_class_ref_element_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_class_ref_element_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_class_ref_element.h"
sendig_class_ref_element_t* instantiate_sendig_class_ref_element(int include_optional);



sendig_class_ref_element_t* instantiate_sendig_class_ref_element(int include_optional) {
  sendig_class_ref_element_t* sendig_class_ref_element = NULL;
  if (include_optional) {
    sendig_class_ref_element = sendig_class_ref_element_create(
      "/mdr/sendig/3-1/classes/Findings",
      "Findings Observation Class",
      "Class"
    );
  } else {
    sendig_class_ref_element = sendig_class_ref_element_create(
      "/mdr/sendig/3-1/classes/Findings",
      "Findings Observation Class",
      "Class"
    );
  }

  return sendig_class_ref_element;
}


#ifdef sendig_class_ref_element_MAIN

void test_sendig_class_ref_element(int include_optional) {
    sendig_class_ref_element_t* sendig_class_ref_element_1 = instantiate_sendig_class_ref_element(include_optional);

	cJSON* jsonsendig_class_ref_element_1 = sendig_class_ref_element_convertToJSON(sendig_class_ref_element_1);
	printf("sendig_class_ref_element :\n%s\n", cJSON_Print(jsonsendig_class_ref_element_1));
	sendig_class_ref_element_t* sendig_class_ref_element_2 = sendig_class_ref_element_parseFromJSON(jsonsendig_class_ref_element_1);
	cJSON* jsonsendig_class_ref_element_2 = sendig_class_ref_element_convertToJSON(sendig_class_ref_element_2);
	printf("repeating sendig_class_ref_element:\n%s\n", cJSON_Print(jsonsendig_class_ref_element_2));
}

int main() {
  test_sendig_class_ref_element(1);
  test_sendig_class_ref_element(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_class_ref_element_MAIN
#endif // sendig_class_ref_element_TEST
