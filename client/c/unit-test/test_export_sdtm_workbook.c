#ifndef export_sdtm_workbook_TEST
#define export_sdtm_workbook_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sdtm_workbook_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sdtm_workbook.h"
export_sdtm_workbook_t* instantiate_export_sdtm_workbook(int include_optional);



export_sdtm_workbook_t* instantiate_export_sdtm_workbook(int include_optional) {
  export_sdtm_workbook_t* export_sdtm_workbook = NULL;
  if (include_optional) {
    export_sdtm_workbook = export_sdtm_workbook_create(
      list_createList(),
      list_createList(),
      list_createList()
    );
  } else {
    export_sdtm_workbook = export_sdtm_workbook_create(
      list_createList(),
      list_createList(),
      list_createList()
    );
  }

  return export_sdtm_workbook;
}


#ifdef export_sdtm_workbook_MAIN

void test_export_sdtm_workbook(int include_optional) {
    export_sdtm_workbook_t* export_sdtm_workbook_1 = instantiate_export_sdtm_workbook(include_optional);

	cJSON* jsonexport_sdtm_workbook_1 = export_sdtm_workbook_convertToJSON(export_sdtm_workbook_1);
	printf("export_sdtm_workbook :\n%s\n", cJSON_Print(jsonexport_sdtm_workbook_1));
	export_sdtm_workbook_t* export_sdtm_workbook_2 = export_sdtm_workbook_parseFromJSON(jsonexport_sdtm_workbook_1);
	cJSON* jsonexport_sdtm_workbook_2 = export_sdtm_workbook_convertToJSON(export_sdtm_workbook_2);
	printf("repeating export_sdtm_workbook:\n%s\n", cJSON_Print(jsonexport_sdtm_workbook_2));
}

int main() {
  test_export_sdtm_workbook(1);
  test_export_sdtm_workbook(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sdtm_workbook_MAIN
#endif // export_sdtm_workbook_TEST
