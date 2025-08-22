#ifndef export_cdashig_scenario_variables_row_TEST
#define export_cdashig_scenario_variables_row_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_cdashig_scenario_variables_row_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_cdashig_scenario_variables_row.h"
export_cdashig_scenario_variables_row_t* instantiate_export_cdashig_scenario_variables_row(int include_optional);



export_cdashig_scenario_variables_row_t* instantiate_export_cdashig_scenario_variables_row(int include_optional) {
  export_cdashig_scenario_variables_row_t* export_cdashig_scenario_variables_row = NULL;
  if (include_optional) {
    export_cdashig_scenario_variables_row = export_cdashig_scenario_variables_row_create(
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
      list_createList(),
      "0",
      "0",
      "0"
    );
  } else {
    export_cdashig_scenario_variables_row = export_cdashig_scenario_variables_row_create(
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
      list_createList(),
      "0",
      "0",
      "0"
    );
  }

  return export_cdashig_scenario_variables_row;
}


#ifdef export_cdashig_scenario_variables_row_MAIN

void test_export_cdashig_scenario_variables_row(int include_optional) {
    export_cdashig_scenario_variables_row_t* export_cdashig_scenario_variables_row_1 = instantiate_export_cdashig_scenario_variables_row(include_optional);

	cJSON* jsonexport_cdashig_scenario_variables_row_1 = export_cdashig_scenario_variables_row_convertToJSON(export_cdashig_scenario_variables_row_1);
	printf("export_cdashig_scenario_variables_row :\n%s\n", cJSON_Print(jsonexport_cdashig_scenario_variables_row_1));
	export_cdashig_scenario_variables_row_t* export_cdashig_scenario_variables_row_2 = export_cdashig_scenario_variables_row_parseFromJSON(jsonexport_cdashig_scenario_variables_row_1);
	cJSON* jsonexport_cdashig_scenario_variables_row_2 = export_cdashig_scenario_variables_row_convertToJSON(export_cdashig_scenario_variables_row_2);
	printf("repeating export_cdashig_scenario_variables_row:\n%s\n", cJSON_Print(jsonexport_cdashig_scenario_variables_row_2));
}

int main() {
  test_export_cdashig_scenario_variables_row(1);
  test_export_cdashig_scenario_variables_row(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_cdashig_scenario_variables_row_MAIN
#endif // export_cdashig_scenario_variables_row_TEST
