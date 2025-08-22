#ifndef sendig_class_TEST
#define sendig_class_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_class_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_class.h"
sendig_class_t* instantiate_sendig_class(int include_optional);

#include "test_sendig_class_links.c"


sendig_class_t* instantiate_sendig_class(int include_optional) {
  sendig_class_t* sendig_class = NULL;
  if (include_optional) {
    sendig_class = sendig_class_create(
      "5",
      "Findings",
      "Findings Observation Class",
      "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)",
       // false, not to have infinite recursion
      instantiate_sendig_class_links(0),
      list_createList()
    );
  } else {
    sendig_class = sendig_class_create(
      "5",
      "Findings",
      "Findings Observation Class",
      "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)",
      NULL,
      list_createList()
    );
  }

  return sendig_class;
}


#ifdef sendig_class_MAIN

void test_sendig_class(int include_optional) {
    sendig_class_t* sendig_class_1 = instantiate_sendig_class(include_optional);

	cJSON* jsonsendig_class_1 = sendig_class_convertToJSON(sendig_class_1);
	printf("sendig_class :\n%s\n", cJSON_Print(jsonsendig_class_1));
	sendig_class_t* sendig_class_2 = sendig_class_parseFromJSON(jsonsendig_class_1);
	cJSON* jsonsendig_class_2 = sendig_class_convertToJSON(sendig_class_2);
	printf("repeating sendig_class:\n%s\n", cJSON_Print(jsonsendig_class_2));
}

int main() {
  test_sendig_class(1);
  test_sendig_class(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_class_MAIN
#endif // sendig_class_TEST
