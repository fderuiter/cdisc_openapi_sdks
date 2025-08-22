#ifndef export_adam_datastructures_row_TEST
#define export_adam_datastructures_row_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_adam_datastructures_row_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_adam_datastructures_row.h"
export_adam_datastructures_row_t* instantiate_export_adam_datastructures_row(int include_optional);



export_adam_datastructures_row_t* instantiate_export_adam_datastructures_row(int include_optional) {
  export_adam_datastructures_row_t* export_adam_datastructures_row = NULL;
  if (include_optional) {
    export_adam_datastructures_row = export_adam_datastructures_row_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    export_adam_datastructures_row = export_adam_datastructures_row_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return export_adam_datastructures_row;
}


#ifdef export_adam_datastructures_row_MAIN

void test_export_adam_datastructures_row(int include_optional) {
    export_adam_datastructures_row_t* export_adam_datastructures_row_1 = instantiate_export_adam_datastructures_row(include_optional);

	cJSON* jsonexport_adam_datastructures_row_1 = export_adam_datastructures_row_convertToJSON(export_adam_datastructures_row_1);
	printf("export_adam_datastructures_row :\n%s\n", cJSON_Print(jsonexport_adam_datastructures_row_1));
	export_adam_datastructures_row_t* export_adam_datastructures_row_2 = export_adam_datastructures_row_parseFromJSON(jsonexport_adam_datastructures_row_1);
	cJSON* jsonexport_adam_datastructures_row_2 = export_adam_datastructures_row_convertToJSON(export_adam_datastructures_row_2);
	printf("repeating export_adam_datastructures_row:\n%s\n", cJSON_Print(jsonexport_adam_datastructures_row_2));
}

int main() {
  test_export_adam_datastructures_row(1);
  test_export_adam_datastructures_row(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_adam_datastructures_row_MAIN
#endif // export_adam_datastructures_row_TEST
