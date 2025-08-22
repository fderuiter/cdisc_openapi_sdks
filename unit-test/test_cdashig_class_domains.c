#ifndef cdashig_class_domains_TEST
#define cdashig_class_domains_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdashig_class_domains_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdashig_class_domains.h"
cdashig_class_domains_t* instantiate_cdashig_class_domains(int include_optional);

#include "test_cdashig_class_domains_links.c"


cdashig_class_domains_t* instantiate_cdashig_class_domains(int include_optional) {
  cdashig_class_domains_t* cdashig_class_domains = NULL;
  if (include_optional) {
    cdashig_class_domains = cdashig_class_domains_create(
      "4",
      "Findings",
      "Findings",
      "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)",
       // false, not to have infinite recursion
      instantiate_cdashig_class_domains_links(0)
    );
  } else {
    cdashig_class_domains = cdashig_class_domains_create(
      "4",
      "Findings",
      "Findings",
      "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)",
      NULL
    );
  }

  return cdashig_class_domains;
}


#ifdef cdashig_class_domains_MAIN

void test_cdashig_class_domains(int include_optional) {
    cdashig_class_domains_t* cdashig_class_domains_1 = instantiate_cdashig_class_domains(include_optional);

	cJSON* jsoncdashig_class_domains_1 = cdashig_class_domains_convertToJSON(cdashig_class_domains_1);
	printf("cdashig_class_domains :\n%s\n", cJSON_Print(jsoncdashig_class_domains_1));
	cdashig_class_domains_t* cdashig_class_domains_2 = cdashig_class_domains_parseFromJSON(jsoncdashig_class_domains_1);
	cJSON* jsoncdashig_class_domains_2 = cdashig_class_domains_convertToJSON(cdashig_class_domains_2);
	printf("repeating cdashig_class_domains:\n%s\n", cJSON_Print(jsoncdashig_class_domains_2));
}

int main() {
  test_cdashig_class_domains(1);
  test_cdashig_class_domains(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdashig_class_domains_MAIN
#endif // cdashig_class_domains_TEST
