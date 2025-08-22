#ifndef cdash_product_domains_TEST
#define cdash_product_domains_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cdash_product_domains_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cdash_product_domains.h"
cdash_product_domains_t* instantiate_cdash_product_domains(int include_optional);

#include "test_cdash_product_domains_links.c"


cdash_product_domains_t* instantiate_cdash_product_domains(int include_optional) {
  cdash_product_domains_t* cdash_product_domains = NULL;
  if (include_optional) {
    cdash_product_domains = cdash_product_domains_create(
      "CDASH Model v1.1",
      "Clinical Data Acquisition Standards Harmonization Model Version 1.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model describes the foundational structure for the organization, naming, and description of variables and associated attributes to support data collection in clinical trials. The CDASH Model provides naming conventions for the CDASH Implementation Guide (CDASHIG) variables along with additional metadata to help facilitate mapping collected data to their respective SDTM Implementation Guide (SDTMIG) variables.",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "1.1",
       // false, not to have infinite recursion
      instantiate_cdash_product_domains_links(0)
    );
  } else {
    cdash_product_domains = cdash_product_domains_create(
      "CDASH Model v1.1",
      "Clinical Data Acquisition Standards Harmonization Model Version 1.1",
      "The Clinical Data Acquisition Standards Harmonization (CDASH) Model describes the foundational structure for the organization, naming, and description of variables and associated attributes to support data collection in clinical trials. The CDASH Model provides naming conventions for the CDASH Implementation Guide (CDASHIG) variables along with additional metadata to help facilitate mapping collected data to their respective SDTM Implementation Guide (SDTMIG) variables.",
      "Prepared by the CDISC CDASH Team",
      "2019-11-01",
      "Final",
      "1.1",
      NULL
    );
  }

  return cdash_product_domains;
}


#ifdef cdash_product_domains_MAIN

void test_cdash_product_domains(int include_optional) {
    cdash_product_domains_t* cdash_product_domains_1 = instantiate_cdash_product_domains(include_optional);

	cJSON* jsoncdash_product_domains_1 = cdash_product_domains_convertToJSON(cdash_product_domains_1);
	printf("cdash_product_domains :\n%s\n", cJSON_Print(jsoncdash_product_domains_1));
	cdash_product_domains_t* cdash_product_domains_2 = cdash_product_domains_parseFromJSON(jsoncdash_product_domains_1);
	cJSON* jsoncdash_product_domains_2 = cdash_product_domains_convertToJSON(cdash_product_domains_2);
	printf("repeating cdash_product_domains:\n%s\n", cJSON_Print(jsoncdash_product_domains_2));
}

int main() {
  test_cdash_product_domains(1);
  test_cdash_product_domains(0);

  printf("Hello world \n");
  return 0;
}

#endif // cdash_product_domains_MAIN
#endif // cdash_product_domains_TEST
