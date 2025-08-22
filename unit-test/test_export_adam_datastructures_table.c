#ifndef export_adam_datastructures_table_TEST
#define export_adam_datastructures_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_adam_datastructures_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_adam_datastructures_table.h"
export_adam_datastructures_table_t* instantiate_export_adam_datastructures_table(int include_optional);



export_adam_datastructures_table_t* instantiate_export_adam_datastructures_table(int include_optional) {
  export_adam_datastructures_table_t* export_adam_datastructures_table = NULL;
  if (include_optional) {
    export_adam_datastructures_table = export_adam_datastructures_table_create(
      list_createList()
    );
  } else {
    export_adam_datastructures_table = export_adam_datastructures_table_create(
      list_createList()
    );
  }

  return export_adam_datastructures_table;
}


#ifdef export_adam_datastructures_table_MAIN

void test_export_adam_datastructures_table(int include_optional) {
    export_adam_datastructures_table_t* export_adam_datastructures_table_1 = instantiate_export_adam_datastructures_table(include_optional);

	cJSON* jsonexport_adam_datastructures_table_1 = export_adam_datastructures_table_convertToJSON(export_adam_datastructures_table_1);
	printf("export_adam_datastructures_table :\n%s\n", cJSON_Print(jsonexport_adam_datastructures_table_1));
	export_adam_datastructures_table_t* export_adam_datastructures_table_2 = export_adam_datastructures_table_parseFromJSON(jsonexport_adam_datastructures_table_1);
	cJSON* jsonexport_adam_datastructures_table_2 = export_adam_datastructures_table_convertToJSON(export_adam_datastructures_table_2);
	printf("repeating export_adam_datastructures_table:\n%s\n", cJSON_Print(jsonexport_adam_datastructures_table_2));
}

int main() {
  test_export_adam_datastructures_table(1);
  test_export_adam_datastructures_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_adam_datastructures_table_MAIN
#endif // export_adam_datastructures_table_TEST
