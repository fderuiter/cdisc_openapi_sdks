#ifndef export_cdash_table_TEST
#define export_cdash_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_cdash_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_cdash_table.h"
export_cdash_table_t* instantiate_export_cdash_table(int include_optional);



export_cdash_table_t* instantiate_export_cdash_table(int include_optional) {
  export_cdash_table_t* export_cdash_table = NULL;
  if (include_optional) {
    export_cdash_table = export_cdash_table_create(
      list_createList(),
      list_createList()
    );
  } else {
    export_cdash_table = export_cdash_table_create(
      list_createList(),
      list_createList()
    );
  }

  return export_cdash_table;
}


#ifdef export_cdash_table_MAIN

void test_export_cdash_table(int include_optional) {
    export_cdash_table_t* export_cdash_table_1 = instantiate_export_cdash_table(include_optional);

	cJSON* jsonexport_cdash_table_1 = export_cdash_table_convertToJSON(export_cdash_table_1);
	printf("export_cdash_table :\n%s\n", cJSON_Print(jsonexport_cdash_table_1));
	export_cdash_table_t* export_cdash_table_2 = export_cdash_table_parseFromJSON(jsonexport_cdash_table_1);
	cJSON* jsonexport_cdash_table_2 = export_cdash_table_convertToJSON(export_cdash_table_2);
	printf("repeating export_cdash_table:\n%s\n", cJSON_Print(jsonexport_cdash_table_2));
}

int main() {
  test_export_cdash_table(1);
  test_export_cdash_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_cdash_table_MAIN
#endif // export_cdash_table_TEST
