#ifndef cdash_class_domains_TEST
#define cdash_class_domains_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_class_domains_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_class_domains.h"
cdash_class_domains_t* instantiate_cdash_class_domains(int include_optional);

#include "test_cdash_class_domains_links.c"


cdash_class_domains_t* instantiate_cdash_class_domains(int include_optional) {
  cdash_class_domains_t* cdash_class_domains = NULL;
  if (include_optional) {
    cdash_class_domains = cdash_class_domains_create(
      "5",
      "Special-Purpose",
      "Special-Purpose",
      "This SDTM class contains a set of domains which do not conform to the Findings, Events or Interventions observation classes. The domains included are DM, CO, SE and SV. (Source: CDISC Controlled Terminology, GNRLOBSC, C103377, 2018-06-29)",
       // false, not to have infinite recursion
      instantiate_cdash_class_domains_links(0)
    );
  } else {
    cdash_class_domains = cdash_class_domains_create(
      "5",
      "Special-Purpose",
      "Special-Purpose",
      "This SDTM class contains a set of domains which do not conform to the Findings, Events or Interventions observation classes. The domains included are DM, CO, SE and SV. (Source: CDISC Controlled Terminology, GNRLOBSC, C103377, 2018-06-29)",
      NULL
    );
  }

  return cdash_class_domains;
}


#ifdef cdash_class_domains_MAIN

void test_cdash_class_domains(int include_optional) {
    cdash_class_domains_t* cdash_class_domains_1 = instantiate_cdash_class_domains(include_optional);

	cJSON* jsoncdash_class_domains_1 = cdash_class_domains_convertToJSON(cdash_class_domains_1);
	printf("cdash_class_domains :\n%s\n", cJSON_Print(jsoncdash_class_domains_1));
	cdash_class_domains_t* cdash_class_domains_2 = cdash_class_domains_parseFromJSON(jsoncdash_class_domains_1);
	cJSON* jsoncdash_class_domains_2 = cdash_class_domains_convertToJSON(cdash_class_domains_2);
	printf("repeating cdash_class_domains:\n%s\n", cJSON_Print(jsoncdash_class_domains_2));
}

int main() {
  test_cdash_class_domains(1);
  test_cdash_class_domains(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_class_domains_MAIN
#endif // cdash_class_domains_TEST
