#ifndef maintenance_body_TEST
#define maintenance_body_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define maintenance_body_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/maintenance_body.h"
maintenance_body_t* instantiate_maintenance_body(int include_optional);



maintenance_body_t* instantiate_maintenance_body(int include_optional) {
  maintenance_body_t* maintenance_body = NULL;
  if (include_optional) {
    maintenance_body = maintenance_body_create(
      1,
      "0"
    );
  } else {
    maintenance_body = maintenance_body_create(
      1,
      "0"
    );
  }

  return maintenance_body;
}


#ifdef maintenance_body_MAIN

void test_maintenance_body(int include_optional) {
    maintenance_body_t* maintenance_body_1 = instantiate_maintenance_body(include_optional);

	cJSON* jsonmaintenance_body_1 = maintenance_body_convertToJSON(maintenance_body_1);
	printf("maintenance_body :\n%s\n", cJSON_Print(jsonmaintenance_body_1));
	maintenance_body_t* maintenance_body_2 = maintenance_body_parseFromJSON(jsonmaintenance_body_1);
	cJSON* jsonmaintenance_body_2 = maintenance_body_convertToJSON(maintenance_body_2);
	printf("repeating maintenance_body:\n%s\n", cJSON_Print(jsonmaintenance_body_2));
}

int main() {
  test_maintenance_body(1);
  test_maintenance_body(0);

  printf("Hello world \n");
  return 0;
}

#endif // maintenance_body_MAIN
#endif // maintenance_body_TEST
