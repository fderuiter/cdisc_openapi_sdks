#ifndef export_ct_table_TEST
#define export_ct_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_ct_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_ct_table.h"
export_ct_table_t* instantiate_export_ct_table(int include_optional);



export_ct_table_t* instantiate_export_ct_table(int include_optional) {
  export_ct_table_t* export_ct_table = NULL;
  if (include_optional) {
    export_ct_table = export_ct_table_create(
      list_createList()
    );
  } else {
    export_ct_table = export_ct_table_create(
      list_createList()
    );
  }

  return export_ct_table;
}


#ifdef export_ct_table_MAIN

void test_export_ct_table(int include_optional) {
    export_ct_table_t* export_ct_table_1 = instantiate_export_ct_table(include_optional);

	cJSON* jsonexport_ct_table_1 = export_ct_table_convertToJSON(export_ct_table_1);
	printf("export_ct_table :\n%s\n", cJSON_Print(jsonexport_ct_table_1));
	export_ct_table_t* export_ct_table_2 = export_ct_table_parseFromJSON(jsonexport_ct_table_1);
	cJSON* jsonexport_ct_table_2 = export_ct_table_convertToJSON(export_ct_table_2);
	printf("repeating export_ct_table:\n%s\n", cJSON_Print(jsonexport_ct_table_2));
}

int main() {
  test_export_ct_table(1);
  test_export_ct_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_ct_table_MAIN
#endif // export_ct_table_TEST
