#ifndef export_sdtm_variables_table_TEST
#define export_sdtm_variables_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sdtm_variables_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sdtm_variables_table.h"
export_sdtm_variables_table_t* instantiate_export_sdtm_variables_table(int include_optional);



export_sdtm_variables_table_t* instantiate_export_sdtm_variables_table(int include_optional) {
  export_sdtm_variables_table_t* export_sdtm_variables_table = NULL;
  if (include_optional) {
    export_sdtm_variables_table = export_sdtm_variables_table_create(
      list_createList(),
      list_createList()
    );
  } else {
    export_sdtm_variables_table = export_sdtm_variables_table_create(
      list_createList(),
      list_createList()
    );
  }

  return export_sdtm_variables_table;
}


#ifdef export_sdtm_variables_table_MAIN

void test_export_sdtm_variables_table(int include_optional) {
    export_sdtm_variables_table_t* export_sdtm_variables_table_1 = instantiate_export_sdtm_variables_table(include_optional);

	cJSON* jsonexport_sdtm_variables_table_1 = export_sdtm_variables_table_convertToJSON(export_sdtm_variables_table_1);
	printf("export_sdtm_variables_table :\n%s\n", cJSON_Print(jsonexport_sdtm_variables_table_1));
	export_sdtm_variables_table_t* export_sdtm_variables_table_2 = export_sdtm_variables_table_parseFromJSON(jsonexport_sdtm_variables_table_1);
	cJSON* jsonexport_sdtm_variables_table_2 = export_sdtm_variables_table_convertToJSON(export_sdtm_variables_table_2);
	printf("repeating export_sdtm_variables_table:\n%s\n", cJSON_Print(jsonexport_sdtm_variables_table_2));
}

int main() {
  test_export_sdtm_variables_table(1);
  test_export_sdtm_variables_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sdtm_variables_table_MAIN
#endif // export_sdtm_variables_table_TEST
