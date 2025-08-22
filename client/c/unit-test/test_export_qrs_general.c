#ifndef export_qrs_general_TEST
#define export_qrs_general_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_qrs_general_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_qrs_general.h"
export_qrs_general_t* instantiate_export_qrs_general(int include_optional);



export_qrs_general_t* instantiate_export_qrs_general(int include_optional) {
  export_qrs_general_t* export_qrs_general = NULL;
  if (include_optional) {
    export_qrs_general = export_qrs_general_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    export_qrs_general = export_qrs_general_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return export_qrs_general;
}


#ifdef export_qrs_general_MAIN

void test_export_qrs_general(int include_optional) {
    export_qrs_general_t* export_qrs_general_1 = instantiate_export_qrs_general(include_optional);

	cJSON* jsonexport_qrs_general_1 = export_qrs_general_convertToJSON(export_qrs_general_1);
	printf("export_qrs_general :\n%s\n", cJSON_Print(jsonexport_qrs_general_1));
	export_qrs_general_t* export_qrs_general_2 = export_qrs_general_parseFromJSON(jsonexport_qrs_general_1);
	cJSON* jsonexport_qrs_general_2 = export_qrs_general_convertToJSON(export_qrs_general_2);
	printf("repeating export_qrs_general:\n%s\n", cJSON_Print(jsonexport_qrs_general_2));
}

int main() {
  test_export_qrs_general(1);
  test_export_qrs_general(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_qrs_general_MAIN
#endif // export_qrs_general_TEST
