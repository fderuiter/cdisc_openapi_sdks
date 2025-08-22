#ifndef export_sendig_workbook_TEST
#define export_sendig_workbook_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sendig_workbook_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sendig_workbook.h"
export_sendig_workbook_t* instantiate_export_sendig_workbook(int include_optional);



export_sendig_workbook_t* instantiate_export_sendig_workbook(int include_optional) {
  export_sendig_workbook_t* export_sendig_workbook = NULL;
  if (include_optional) {
    export_sendig_workbook = export_sendig_workbook_create(
      list_createList(),
      list_createList()
    );
  } else {
    export_sendig_workbook = export_sendig_workbook_create(
      list_createList(),
      list_createList()
    );
  }

  return export_sendig_workbook;
}


#ifdef export_sendig_workbook_MAIN

void test_export_sendig_workbook(int include_optional) {
    export_sendig_workbook_t* export_sendig_workbook_1 = instantiate_export_sendig_workbook(include_optional);

	cJSON* jsonexport_sendig_workbook_1 = export_sendig_workbook_convertToJSON(export_sendig_workbook_1);
	printf("export_sendig_workbook :\n%s\n", cJSON_Print(jsonexport_sendig_workbook_1));
	export_sendig_workbook_t* export_sendig_workbook_2 = export_sendig_workbook_parseFromJSON(jsonexport_sendig_workbook_1);
	cJSON* jsonexport_sendig_workbook_2 = export_sendig_workbook_convertToJSON(export_sendig_workbook_2);
	printf("repeating export_sendig_workbook:\n%s\n", cJSON_Print(jsonexport_sendig_workbook_2));
}

int main() {
  test_export_sendig_workbook(1);
  test_export_sendig_workbook(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sendig_workbook_MAIN
#endif // export_sendig_workbook_TEST
