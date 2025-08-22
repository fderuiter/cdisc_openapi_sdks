#ifndef export_qrs_csv_items_row_TEST
#define export_qrs_csv_items_row_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_qrs_csv_items_row_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_qrs_csv_items_row.h"
export_qrs_csv_items_row_t* instantiate_export_qrs_csv_items_row(int include_optional);



export_qrs_csv_items_row_t* instantiate_export_qrs_csv_items_row(int include_optional) {
  export_qrs_csv_items_row_t* export_qrs_csv_items_row = NULL;
  if (include_optional) {
    export_qrs_csv_items_row = export_qrs_csv_items_row_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    export_qrs_csv_items_row = export_qrs_csv_items_row_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return export_qrs_csv_items_row;
}


#ifdef export_qrs_csv_items_row_MAIN

void test_export_qrs_csv_items_row(int include_optional) {
    export_qrs_csv_items_row_t* export_qrs_csv_items_row_1 = instantiate_export_qrs_csv_items_row(include_optional);

	cJSON* jsonexport_qrs_csv_items_row_1 = export_qrs_csv_items_row_convertToJSON(export_qrs_csv_items_row_1);
	printf("export_qrs_csv_items_row :\n%s\n", cJSON_Print(jsonexport_qrs_csv_items_row_1));
	export_qrs_csv_items_row_t* export_qrs_csv_items_row_2 = export_qrs_csv_items_row_parseFromJSON(jsonexport_qrs_csv_items_row_1);
	cJSON* jsonexport_qrs_csv_items_row_2 = export_qrs_csv_items_row_convertToJSON(export_qrs_csv_items_row_2);
	printf("repeating export_qrs_csv_items_row:\n%s\n", cJSON_Print(jsonexport_qrs_csv_items_row_2));
}

int main() {
  test_export_qrs_csv_items_row(1);
  test_export_qrs_csv_items_row(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_qrs_csv_items_row_MAIN
#endif // export_qrs_csv_items_row_TEST
