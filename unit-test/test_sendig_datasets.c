#ifndef sendig_datasets_TEST
#define sendig_datasets_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define sendig_datasets_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/sendig_datasets.h"
sendig_datasets_t* instantiate_sendig_datasets(int include_optional);

#include "test_sendig_datasets_links.c"


sendig_datasets_t* instantiate_sendig_datasets(int include_optional) {
  sendig_datasets_t* sendig_datasets = NULL;
  if (include_optional) {
    sendig_datasets = sendig_datasets_create(
      "SENDIG v3.1",
      "Standard for Exchange of Nonclinical Data Implementation Guide: Nonclinical Studies Version 3.1 (Final)",
      "The SENDIG is intended to guide the organization, structure, and format of standard nonclinical tabulation datasets for interchange between organizations such as sponsors and CROs, and for submission to regulatory authorities such as the U.S. Food and Drug Administration (FDA).",
      "Prepared by the CDISC Standard for Exchange of Nonclinical Data Team",
      "2016-06-27",
      "Final",
      "3.1",
       // false, not to have infinite recursion
      instantiate_sendig_datasets_links(0)
    );
  } else {
    sendig_datasets = sendig_datasets_create(
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

  return sendig_datasets;
}


#ifdef sendig_datasets_MAIN

void test_sendig_datasets(int include_optional) {
    sendig_datasets_t* sendig_datasets_1 = instantiate_sendig_datasets(include_optional);

	cJSON* jsonsendig_datasets_1 = sendig_datasets_convertToJSON(sendig_datasets_1);
	printf("sendig_datasets :\n%s\n", cJSON_Print(jsonsendig_datasets_1));
	sendig_datasets_t* sendig_datasets_2 = sendig_datasets_parseFromJSON(jsonsendig_datasets_1);
	cJSON* jsonsendig_datasets_2 = sendig_datasets_convertToJSON(sendig_datasets_2);
	printf("repeating sendig_datasets:\n%s\n", cJSON_Print(jsonsendig_datasets_2));
}

int main() {
  test_sendig_datasets(1);
  test_sendig_datasets(0);

  printf("Hello world \n");
  return 0;
}

#endif // sendig_datasets_MAIN
#endif // sendig_datasets_TEST
