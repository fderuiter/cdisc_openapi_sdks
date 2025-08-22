#ifndef qrs_responsegroups_ref_TEST
#define qrs_responsegroups_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responsegroups_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responsegroups_ref.h"
qrs_responsegroups_ref_t* instantiate_qrs_responsegroups_ref(int include_optional);



qrs_responsegroups_ref_t* instantiate_qrs_responsegroups_ref(int include_optional) {
  qrs_responsegroups_ref_t* qrs_responsegroups_ref = NULL;
  if (include_optional) {
    qrs_responsegroups_ref = qrs_responsegroups_ref_create(
      "/mdr/qrs/AIMS1/1-0/responsegroups",
      "QRS Measure",
      "QRS Response Group List"
    );
  } else {
    qrs_responsegroups_ref = qrs_responsegroups_ref_create(
      "/mdr/qrs/AIMS1/1-0/responsegroups",
      "QRS Measure",
      "QRS Response Group List"
    );
  }

  return qrs_responsegroups_ref;
}


#ifdef qrs_responsegroups_ref_MAIN

void test_qrs_responsegroups_ref(int include_optional) {
    qrs_responsegroups_ref_t* qrs_responsegroups_ref_1 = instantiate_qrs_responsegroups_ref(include_optional);

	cJSON* jsonqrs_responsegroups_ref_1 = qrs_responsegroups_ref_convertToJSON(qrs_responsegroups_ref_1);
	printf("qrs_responsegroups_ref :\n%s\n", cJSON_Print(jsonqrs_responsegroups_ref_1));
	qrs_responsegroups_ref_t* qrs_responsegroups_ref_2 = qrs_responsegroups_ref_parseFromJSON(jsonqrs_responsegroups_ref_1);
	cJSON* jsonqrs_responsegroups_ref_2 = qrs_responsegroups_ref_convertToJSON(qrs_responsegroups_ref_2);
	printf("repeating qrs_responsegroups_ref:\n%s\n", cJSON_Print(jsonqrs_responsegroups_ref_2));
}

int main() {
  test_qrs_responsegroups_ref(1);
  test_qrs_responsegroups_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responsegroups_ref_MAIN
#endif // qrs_responsegroups_ref_TEST
