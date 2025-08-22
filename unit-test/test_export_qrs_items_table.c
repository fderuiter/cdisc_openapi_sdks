#ifndef export_qrs_items_table_TEST
#define export_qrs_items_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_qrs_items_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_qrs_items_table.h"
export_qrs_items_table_t* instantiate_export_qrs_items_table(int include_optional);



export_qrs_items_table_t* instantiate_export_qrs_items_table(int include_optional) {
  export_qrs_items_table_t* export_qrs_items_table = NULL;
  if (include_optional) {
    export_qrs_items_table = export_qrs_items_table_create(
      list_createList()
    );
  } else {
    export_qrs_items_table = export_qrs_items_table_create(
      list_createList()
    );
  }

  return export_qrs_items_table;
}


#ifdef export_qrs_items_table_MAIN

void test_export_qrs_items_table(int include_optional) {
    export_qrs_items_table_t* export_qrs_items_table_1 = instantiate_export_qrs_items_table(include_optional);

	cJSON* jsonexport_qrs_items_table_1 = export_qrs_items_table_convertToJSON(export_qrs_items_table_1);
	printf("export_qrs_items_table :\n%s\n", cJSON_Print(jsonexport_qrs_items_table_1));
	export_qrs_items_table_t* export_qrs_items_table_2 = export_qrs_items_table_parseFromJSON(jsonexport_qrs_items_table_1);
	cJSON* jsonexport_qrs_items_table_2 = export_qrs_items_table_convertToJSON(export_qrs_items_table_2);
	printf("repeating export_qrs_items_table:\n%s\n", cJSON_Print(jsonexport_qrs_items_table_2));
}

int main() {
  test_export_qrs_items_table(1);
  test_export_qrs_items_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_qrs_items_table_MAIN
#endif // export_qrs_items_table_TEST
