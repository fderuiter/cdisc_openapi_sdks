#ifndef export_qrs_responses_TEST
#define export_qrs_responses_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_qrs_responses_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_qrs_responses.h"
export_qrs_responses_t* instantiate_export_qrs_responses(int include_optional);



export_qrs_responses_t* instantiate_export_qrs_responses(int include_optional) {
  export_qrs_responses_t* export_qrs_responses = NULL;
  if (include_optional) {
    export_qrs_responses = export_qrs_responses_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    export_qrs_responses = export_qrs_responses_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return export_qrs_responses;
}


#ifdef export_qrs_responses_MAIN

void test_export_qrs_responses(int include_optional) {
    export_qrs_responses_t* export_qrs_responses_1 = instantiate_export_qrs_responses(include_optional);

	cJSON* jsonexport_qrs_responses_1 = export_qrs_responses_convertToJSON(export_qrs_responses_1);
	printf("export_qrs_responses :\n%s\n", cJSON_Print(jsonexport_qrs_responses_1));
	export_qrs_responses_t* export_qrs_responses_2 = export_qrs_responses_parseFromJSON(jsonexport_qrs_responses_1);
	cJSON* jsonexport_qrs_responses_2 = export_qrs_responses_convertToJSON(export_qrs_responses_2);
	printf("repeating export_qrs_responses:\n%s\n", cJSON_Print(jsonexport_qrs_responses_2));
}

int main() {
  test_export_qrs_responses(1);
  test_export_qrs_responses(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_qrs_responses_MAIN
#endif // export_qrs_responses_TEST
