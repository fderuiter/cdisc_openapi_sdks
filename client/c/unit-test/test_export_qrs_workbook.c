#ifndef export_qrs_workbook_TEST
#define export_qrs_workbook_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_qrs_workbook_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_qrs_workbook.h"
export_qrs_workbook_t* instantiate_export_qrs_workbook(int include_optional);

#include "test_export_qrs_general.c"


export_qrs_workbook_t* instantiate_export_qrs_workbook(int include_optional) {
  export_qrs_workbook_t* export_qrs_workbook = NULL;
  if (include_optional) {
    export_qrs_workbook = export_qrs_workbook_create(
       // false, not to have infinite recursion
      instantiate_export_qrs_general(0),
      list_createList(),
      list_createList()
    );
  } else {
    export_qrs_workbook = export_qrs_workbook_create(
      NULL,
      list_createList(),
      list_createList()
    );
  }

  return export_qrs_workbook;
}


#ifdef export_qrs_workbook_MAIN

void test_export_qrs_workbook(int include_optional) {
    export_qrs_workbook_t* export_qrs_workbook_1 = instantiate_export_qrs_workbook(include_optional);

	cJSON* jsonexport_qrs_workbook_1 = export_qrs_workbook_convertToJSON(export_qrs_workbook_1);
	printf("export_qrs_workbook :\n%s\n", cJSON_Print(jsonexport_qrs_workbook_1));
	export_qrs_workbook_t* export_qrs_workbook_2 = export_qrs_workbook_parseFromJSON(jsonexport_qrs_workbook_1);
	cJSON* jsonexport_qrs_workbook_2 = export_qrs_workbook_convertToJSON(export_qrs_workbook_2);
	printf("repeating export_qrs_workbook:\n%s\n", cJSON_Print(jsonexport_qrs_workbook_2));
}

int main() {
  test_export_qrs_workbook(1);
  test_export_qrs_workbook(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_qrs_workbook_MAIN
#endif // export_qrs_workbook_TEST
