#ifndef export_sendig_datasets_table_TEST
#define export_sendig_datasets_table_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sendig_datasets_table_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sendig_datasets_table.h"
export_sendig_datasets_table_t* instantiate_export_sendig_datasets_table(int include_optional);



export_sendig_datasets_table_t* instantiate_export_sendig_datasets_table(int include_optional) {
  export_sendig_datasets_table_t* export_sendig_datasets_table = NULL;
  if (include_optional) {
    export_sendig_datasets_table = export_sendig_datasets_table_create(
      list_createList()
    );
  } else {
    export_sendig_datasets_table = export_sendig_datasets_table_create(
      list_createList()
    );
  }

  return export_sendig_datasets_table;
}


#ifdef export_sendig_datasets_table_MAIN

void test_export_sendig_datasets_table(int include_optional) {
    export_sendig_datasets_table_t* export_sendig_datasets_table_1 = instantiate_export_sendig_datasets_table(include_optional);

	cJSON* jsonexport_sendig_datasets_table_1 = export_sendig_datasets_table_convertToJSON(export_sendig_datasets_table_1);
	printf("export_sendig_datasets_table :\n%s\n", cJSON_Print(jsonexport_sendig_datasets_table_1));
	export_sendig_datasets_table_t* export_sendig_datasets_table_2 = export_sendig_datasets_table_parseFromJSON(jsonexport_sendig_datasets_table_1);
	cJSON* jsonexport_sendig_datasets_table_2 = export_sendig_datasets_table_convertToJSON(export_sendig_datasets_table_2);
	printf("repeating export_sendig_datasets_table:\n%s\n", cJSON_Print(jsonexport_sendig_datasets_table_2));
}

int main() {
  test_export_sendig_datasets_table(1);
  test_export_sendig_datasets_table(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sendig_datasets_table_MAIN
#endif // export_sendig_datasets_table_TEST
