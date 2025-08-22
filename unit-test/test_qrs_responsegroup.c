#ifndef qrs_responsegroup_TEST
#define qrs_responsegroup_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define qrs_responsegroup_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/qrs_responsegroup.h"
qrs_responsegroup_t* instantiate_qrs_responsegroup(int include_optional);

#include "test_qrs_responsegroup_links.c"


qrs_responsegroup_t* instantiate_qrs_responsegroup(int include_optional) {
  qrs_responsegroup_t* qrs_responsegroup = NULL;
  if (include_optional) {
    qrs_responsegroup = qrs_responsegroup_create(
      "01 to 08",
       // false, not to have infinite recursion
      instantiate_qrs_responsegroup_links(0)
    );
  } else {
    qrs_responsegroup = qrs_responsegroup_create(
      "01 to 08",
      NULL
    );
  }

  return qrs_responsegroup;
}


#ifdef qrs_responsegroup_MAIN

void test_qrs_responsegroup(int include_optional) {
    qrs_responsegroup_t* qrs_responsegroup_1 = instantiate_qrs_responsegroup(include_optional);

	cJSON* jsonqrs_responsegroup_1 = qrs_responsegroup_convertToJSON(qrs_responsegroup_1);
	printf("qrs_responsegroup :\n%s\n", cJSON_Print(jsonqrs_responsegroup_1));
	qrs_responsegroup_t* qrs_responsegroup_2 = qrs_responsegroup_parseFromJSON(jsonqrs_responsegroup_1);
	cJSON* jsonqrs_responsegroup_2 = qrs_responsegroup_convertToJSON(qrs_responsegroup_2);
	printf("repeating qrs_responsegroup:\n%s\n", cJSON_Print(jsonqrs_responsegroup_2));
}

int main() {
  test_qrs_responsegroup(1);
  test_qrs_responsegroup(0);

  printf("Hello world \n");
  return 0;
}

#endif // qrs_responsegroup_MAIN
#endif // qrs_responsegroup_TEST
