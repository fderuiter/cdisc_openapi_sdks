#ifndef export_adam_workbook_TEST
#define export_adam_workbook_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_adam_workbook_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_adam_workbook.h"
export_adam_workbook_t* instantiate_export_adam_workbook(int include_optional);



export_adam_workbook_t* instantiate_export_adam_workbook(int include_optional) {
  export_adam_workbook_t* export_adam_workbook = NULL;
  if (include_optional) {
    export_adam_workbook = export_adam_workbook_create(
      list_createList(),
      list_createList()
    );
  } else {
    export_adam_workbook = export_adam_workbook_create(
      list_createList(),
      list_createList()
    );
  }

  return export_adam_workbook;
}


#ifdef export_adam_workbook_MAIN

void test_export_adam_workbook(int include_optional) {
    export_adam_workbook_t* export_adam_workbook_1 = instantiate_export_adam_workbook(include_optional);

	cJSON* jsonexport_adam_workbook_1 = export_adam_workbook_convertToJSON(export_adam_workbook_1);
	printf("export_adam_workbook :\n%s\n", cJSON_Print(jsonexport_adam_workbook_1));
	export_adam_workbook_t* export_adam_workbook_2 = export_adam_workbook_parseFromJSON(jsonexport_adam_workbook_1);
	cJSON* jsonexport_adam_workbook_2 = export_adam_workbook_convertToJSON(export_adam_workbook_2);
	printf("repeating export_adam_workbook:\n%s\n", cJSON_Print(jsonexport_adam_workbook_2));
}

int main() {
  test_export_adam_workbook(1);
  test_export_adam_workbook(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_adam_workbook_MAIN
#endif // export_adam_workbook_TEST
