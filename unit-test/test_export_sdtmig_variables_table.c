#ifndef export_sdtmig_variables_table_TEST
#define export_sdtmig_variables_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sdtmig_variables_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sdtmig_variables_table.h"
export_sdtmig_variables_table_t* instantiate_export_sdtmig_variables_table(int include_optional);



export_sdtmig_variables_table_t* instantiate_export_sdtmig_variables_table(int include_optional) {
  export_sdtmig_variables_table_t* export_sdtmig_variables_table = NULL;
  if (include_optional) {
    export_sdtmig_variables_table = export_sdtmig_variables_table_create(
      list_createList()
    );
  } else {
    export_sdtmig_variables_table = export_sdtmig_variables_table_create(
      list_createList()
    );
  }

  return export_sdtmig_variables_table;
}


#ifdef export_sdtmig_variables_table_MAIN

void test_export_sdtmig_variables_table(int include_optional) {
    export_sdtmig_variables_table_t* export_sdtmig_variables_table_1 = instantiate_export_sdtmig_variables_table(include_optional);

	cJSON* jsonexport_sdtmig_variables_table_1 = export_sdtmig_variables_table_convertToJSON(export_sdtmig_variables_table_1);
	printf("export_sdtmig_variables_table :\n%s\n", cJSON_Print(jsonexport_sdtmig_variables_table_1));
	export_sdtmig_variables_table_t* export_sdtmig_variables_table_2 = export_sdtmig_variables_table_parseFromJSON(jsonexport_sdtmig_variables_table_1);
	cJSON* jsonexport_sdtmig_variables_table_2 = export_sdtmig_variables_table_convertToJSON(export_sdtmig_variables_table_2);
	printf("repeating export_sdtmig_variables_table:\n%s\n", cJSON_Print(jsonexport_sdtmig_variables_table_2));
}

int main() {
  test_export_sdtmig_variables_table(1);
  test_export_sdtmig_variables_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sdtmig_variables_table_MAIN
#endif // export_sdtmig_variables_table_TEST
