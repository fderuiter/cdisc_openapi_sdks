#ifndef export_sdtmig_variables_row_TEST
#define export_sdtmig_variables_row_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_sdtmig_variables_row_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_sdtmig_variables_row.h"
export_sdtmig_variables_row_t* instantiate_export_sdtmig_variables_row(int include_optional);



export_sdtmig_variables_row_t* instantiate_export_sdtmig_variables_row(int include_optional) {
  export_sdtmig_variables_row_t* export_sdtmig_variables_row = NULL;
  if (include_optional) {
    export_sdtmig_variables_row = export_sdtmig_variables_row_create(
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
    export_sdtmig_variables_row = export_sdtmig_variables_row_create(
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

  return export_sdtmig_variables_row;
}


#ifdef export_sdtmig_variables_row_MAIN

void test_export_sdtmig_variables_row(int include_optional) {
    export_sdtmig_variables_row_t* export_sdtmig_variables_row_1 = instantiate_export_sdtmig_variables_row(include_optional);

	cJSON* jsonexport_sdtmig_variables_row_1 = export_sdtmig_variables_row_convertToJSON(export_sdtmig_variables_row_1);
	printf("export_sdtmig_variables_row :\n%s\n", cJSON_Print(jsonexport_sdtmig_variables_row_1));
	export_sdtmig_variables_row_t* export_sdtmig_variables_row_2 = export_sdtmig_variables_row_parseFromJSON(jsonexport_sdtmig_variables_row_1);
	cJSON* jsonexport_sdtmig_variables_row_2 = export_sdtmig_variables_row_convertToJSON(export_sdtmig_variables_row_2);
	printf("repeating export_sdtmig_variables_row:\n%s\n", cJSON_Print(jsonexport_sdtmig_variables_row_2));
}

int main() {
  test_export_sdtmig_variables_row(1);
  test_export_sdtmig_variables_row(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_sdtmig_variables_row_MAIN
#endif // export_sdtmig_variables_row_TEST
