#ifndef export_ct_codelist_TEST
#define export_ct_codelist_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_ct_codelist_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_ct_codelist.h"
export_ct_codelist_t* instantiate_export_ct_codelist(int include_optional);



export_ct_codelist_t* instantiate_export_ct_codelist(int include_optional) {
  export_ct_codelist_t* export_ct_codelist = NULL;
  if (include_optional) {
    export_ct_codelist = export_ct_codelist_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      list_createList(),
      "0",
      "0",
      "0",
      list_createList()
    );
  } else {
    export_ct_codelist = export_ct_codelist_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      list_createList(),
      "0",
      "0",
      "0",
      list_createList()
    );
  }

  return export_ct_codelist;
}


#ifdef export_ct_codelist_MAIN

void test_export_ct_codelist(int include_optional) {
    export_ct_codelist_t* export_ct_codelist_1 = instantiate_export_ct_codelist(include_optional);

	cJSON* jsonexport_ct_codelist_1 = export_ct_codelist_convertToJSON(export_ct_codelist_1);
	printf("export_ct_codelist :\n%s\n", cJSON_Print(jsonexport_ct_codelist_1));
	export_ct_codelist_t* export_ct_codelist_2 = export_ct_codelist_parseFromJSON(jsonexport_ct_codelist_1);
	cJSON* jsonexport_ct_codelist_2 = export_ct_codelist_convertToJSON(export_ct_codelist_2);
	printf("repeating export_ct_codelist:\n%s\n", cJSON_Print(jsonexport_ct_codelist_2));
}

int main() {
  test_export_ct_codelist(1);
  test_export_ct_codelist(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_ct_codelist_MAIN
#endif // export_ct_codelist_TEST
