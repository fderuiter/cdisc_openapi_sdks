#ifndef export_sdtm_datasets_row_TEST
#define export_sdtm_datasets_row_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sdtm_datasets_row_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sdtm_datasets_row.h"
export_sdtm_datasets_row_t* instantiate_export_sdtm_datasets_row(int include_optional);



export_sdtm_datasets_row_t* instantiate_export_sdtm_datasets_row(int include_optional) {
  export_sdtm_datasets_row_t* export_sdtm_datasets_row = NULL;
  if (include_optional) {
    export_sdtm_datasets_row = export_sdtm_datasets_row_create(
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    export_sdtm_datasets_row = export_sdtm_datasets_row_create(
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return export_sdtm_datasets_row;
}


#ifdef export_sdtm_datasets_row_MAIN

void test_export_sdtm_datasets_row(int include_optional) {
    export_sdtm_datasets_row_t* export_sdtm_datasets_row_1 = instantiate_export_sdtm_datasets_row(include_optional);

	cJSON* jsonexport_sdtm_datasets_row_1 = export_sdtm_datasets_row_convertToJSON(export_sdtm_datasets_row_1);
	printf("export_sdtm_datasets_row :\n%s\n", cJSON_Print(jsonexport_sdtm_datasets_row_1));
	export_sdtm_datasets_row_t* export_sdtm_datasets_row_2 = export_sdtm_datasets_row_parseFromJSON(jsonexport_sdtm_datasets_row_1);
	cJSON* jsonexport_sdtm_datasets_row_2 = export_sdtm_datasets_row_convertToJSON(export_sdtm_datasets_row_2);
	printf("repeating export_sdtm_datasets_row:\n%s\n", cJSON_Print(jsonexport_sdtm_datasets_row_2));
}

int main() {
  test_export_sdtm_datasets_row(1);
  test_export_sdtm_datasets_row(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sdtm_datasets_row_MAIN
#endif // export_sdtm_datasets_row_TEST
