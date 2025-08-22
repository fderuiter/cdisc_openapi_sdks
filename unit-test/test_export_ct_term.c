#ifndef export_ct_term_TEST
#define export_ct_term_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define export_ct_term_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/export_ct_term.h"
export_ct_term_t* instantiate_export_ct_term(int include_optional);



export_ct_term_t* instantiate_export_ct_term(int include_optional) {
  export_ct_term_t* export_ct_term = NULL;
  if (include_optional) {
    export_ct_term = export_ct_term_create(
      "0",
      list_createList(),
      "0"
    );
  } else {
    export_ct_term = export_ct_term_create(
      "0",
      list_createList(),
      "0"
    );
  }

  return export_ct_term;
}


#ifdef export_ct_term_MAIN

void test_export_ct_term(int include_optional) {
    export_ct_term_t* export_ct_term_1 = instantiate_export_ct_term(include_optional);

	cJSON* jsonexport_ct_term_1 = export_ct_term_convertToJSON(export_ct_term_1);
	printf("export_ct_term :\n%s\n", cJSON_Print(jsonexport_ct_term_1));
	export_ct_term_t* export_ct_term_2 = export_ct_term_parseFromJSON(jsonexport_ct_term_1);
	cJSON* jsonexport_ct_term_2 = export_ct_term_convertToJSON(export_ct_term_2);
	printf("repeating export_ct_term:\n%s\n", cJSON_Print(jsonexport_ct_term_2));
}

int main() {
  test_export_ct_term(1);
  test_export_ct_term(0);

  printf("Hello world \n");
  return 0;
}

#endif // export_ct_term_MAIN
#endif // export_ct_term_TEST
