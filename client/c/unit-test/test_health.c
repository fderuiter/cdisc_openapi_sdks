#ifndef health_TEST
#define health_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define health_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/health.h"
health_t* instantiate_health(int include_optional);



health_t* instantiate_health(int include_optional) {
  health_t* health = NULL;
  if (include_optional) {
    health = health_create(
      1,
      1,
      1,
      1,
      1
    );
  } else {
    health = health_create(
      1,
      1,
      1,
      1,
      1
    );
  }

  return health;
}


#ifdef health_MAIN

void test_health(int include_optional) {
    health_t* health_1 = instantiate_health(include_optional);

	cJSON* jsonhealth_1 = health_convertToJSON(health_1);
	printf("health :\n%s\n", cJSON_Print(jsonhealth_1));
	health_t* health_2 = health_parseFromJSON(jsonhealth_1);
	cJSON* jsonhealth_2 = health_convertToJSON(health_2);
	printf("repeating health:\n%s\n", cJSON_Print(jsonhealth_2));
}

int main() {
  test_health(1);
  test_health(0);

  printf("Hello world \n");
  return 0;
}

#endif // health_MAIN
#endif // health_TEST
