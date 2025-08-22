#ifndef qrs_responsegroups_TEST
#define qrs_responsegroups_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responsegroups_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responsegroups.h"
qrs_responsegroups_t* instantiate_qrs_responsegroups(int include_optional);

#include "test_qrs_responsegroups_links.c"


qrs_responsegroups_t* instantiate_qrs_responsegroups(int include_optional) {
  qrs_responsegroups_t* qrs_responsegroups = NULL;
  if (include_optional) {
    qrs_responsegroups = qrs_responsegroups_create(
      "AIMS v1.0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).",
      "2013-05-22",
      "2030-12-31",
      "Final",
      "1.0",
      "Questionnaire",
       // false, not to have infinite recursion
      instantiate_qrs_responsegroups_links(0)
    );
  } else {
    qrs_responsegroups = qrs_responsegroups_create(
      "AIMS v1.0",
      "Abnormal Involuntary Movement Scale Version 1.0",
      "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).",
      "2013-05-22",
      "2030-12-31",
      "Final",
      "1.0",
      "Questionnaire",
      NULL
    );
  }

  return qrs_responsegroups;
}


#ifdef qrs_responsegroups_MAIN

void test_qrs_responsegroups(int include_optional) {
    qrs_responsegroups_t* qrs_responsegroups_1 = instantiate_qrs_responsegroups(include_optional);

	cJSON* jsonqrs_responsegroups_1 = qrs_responsegroups_convertToJSON(qrs_responsegroups_1);
	printf("qrs_responsegroups :\n%s\n", cJSON_Print(jsonqrs_responsegroups_1));
	qrs_responsegroups_t* qrs_responsegroups_2 = qrs_responsegroups_parseFromJSON(jsonqrs_responsegroups_1);
	cJSON* jsonqrs_responsegroups_2 = qrs_responsegroups_convertToJSON(qrs_responsegroups_2);
	printf("repeating qrs_responsegroups:\n%s\n", cJSON_Print(jsonqrs_responsegroups_2));
}

int main() {
  test_qrs_responsegroups(1);
  test_qrs_responsegroups(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responsegroups_MAIN
#endif // qrs_responsegroups_TEST
