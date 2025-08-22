#ifndef sendig_classes_TEST
#define sendig_classes_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_classes_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_classes.h"
sendig_classes_t* instantiate_sendig_classes(int include_optional);

#include "test_sendig_classes_links.c"


sendig_classes_t* instantiate_sendig_classes(int include_optional) {
  sendig_classes_t* sendig_classes = NULL;
  if (include_optional) {
    sendig_classes = sendig_classes_create(
      "SENDIG v3.1",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "The SENDIG is intended to guide the organization, structure, and format of standard nonclinical tabulation datasets for interchange between organizations such as sponsors and CROs, and for submission to regulatory authorities such as the U.S. Food and Drug Administration (FDA).",
      "Prepared by the CDISC Standard for Exchange of Nonclinical Data Team",
      "2016-06-27",
      "Final",
      "3.1",
       // false, not to have infinite recursion
      instantiate_sendig_classes_links(0)
    );
  } else {
    sendig_classes = sendig_classes_create(
      "SENDIG v3.1",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "The SENDIG is intended to guide the organization, structure, and format of standard nonclinical tabulation datasets for interchange between organizations such as sponsors and CROs, and for submission to regulatory authorities such as the U.S. Food and Drug Administration (FDA).",
      "Prepared by the CDISC Standard for Exchange of Nonclinical Data Team",
      "2016-06-27",
      "Final",
      "3.1",
      NULL
    );
  }

  return sendig_classes;
}


#ifdef sendig_classes_MAIN

void test_sendig_classes(int include_optional) {
    sendig_classes_t* sendig_classes_1 = instantiate_sendig_classes(include_optional);

	cJSON* jsonsendig_classes_1 = sendig_classes_convertToJSON(sendig_classes_1);
	printf("sendig_classes :\n%s\n", cJSON_Print(jsonsendig_classes_1));
	sendig_classes_t* sendig_classes_2 = sendig_classes_parseFromJSON(jsonsendig_classes_1);
	cJSON* jsonsendig_classes_2 = sendig_classes_convertToJSON(sendig_classes_2);
	printf("repeating sendig_classes:\n%s\n", cJSON_Print(jsonsendig_classes_2));
}

int main() {
  test_sendig_classes(1);
  test_sendig_classes(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_classes_MAIN
#endif // sendig_classes_TEST
