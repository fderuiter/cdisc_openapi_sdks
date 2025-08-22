#ifndef qrs_responsegroup_ref_TEST
#define qrs_responsegroup_ref_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responsegroup_ref_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responsegroup_ref.h"
qrs_responsegroup_ref_t* instantiate_qrs_responsegroup_ref(int include_optional);



qrs_responsegroup_ref_t* instantiate_qrs_responsegroup_ref(int include_optional) {
  qrs_responsegroup_ref_t* qrs_responsegroup_ref = NULL;
  if (include_optional) {
    qrs_responsegroup_ref = qrs_responsegroup_ref_create(
      "/mdr/qrs/AIMS1/1-0/responsegroups/AIMS1.01to08",
      "01 to 08",
      "QRS Responses"
    );
  } else {
    qrs_responsegroup_ref = qrs_responsegroup_ref_create(
      "/mdr/qrs/AIMS1/1-0/responsegroups/AIMS1.01to08",
      "01 to 08",
      "QRS Responses"
    );
  }

  return qrs_responsegroup_ref;
}


#ifdef qrs_responsegroup_ref_MAIN

void test_qrs_responsegroup_ref(int include_optional) {
    qrs_responsegroup_ref_t* qrs_responsegroup_ref_1 = instantiate_qrs_responsegroup_ref(include_optional);

	cJSON* jsonqrs_responsegroup_ref_1 = qrs_responsegroup_ref_convertToJSON(qrs_responsegroup_ref_1);
	printf("qrs_responsegroup_ref :\n%s\n", cJSON_Print(jsonqrs_responsegroup_ref_1));
	qrs_responsegroup_ref_t* qrs_responsegroup_ref_2 = qrs_responsegroup_ref_parseFromJSON(jsonqrs_responsegroup_ref_1);
	cJSON* jsonqrs_responsegroup_ref_2 = qrs_responsegroup_ref_convertToJSON(qrs_responsegroup_ref_2);
	printf("repeating qrs_responsegroup_ref:\n%s\n", cJSON_Print(jsonqrs_responsegroup_ref_2));
}

int main() {
  test_qrs_responsegroup_ref(1);
  test_qrs_responsegroup_ref(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responsegroup_ref_MAIN
#endif // qrs_responsegroup_ref_TEST
