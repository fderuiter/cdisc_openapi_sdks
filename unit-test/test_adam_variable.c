#ifndef adam_variable_TEST
#define adam_variable_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_variable_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_variable.h"
adam_variable_t* instantiate_adam_variable(int include_optional);

#include "test_adam_variable_links.c"


adam_variable_t* instantiate_adam_variable(int include_optional) {
  adam_variable_t* adam_variable = NULL;
  if (include_optional) {
    adam_variable = adam_variable_create(
      "5",
      "SITEGRy",
      "Pooled Site Group y",
      "Character description of a grouping or pooling of clinical sites for analysis purposes. For example, SITEGR3 is the name of a variable containing site group (pooled site) names, where the grouping has been done according to the third site grouping algorithm, defined in variable metadata; SITEGR3 does not mean the third group of sites.",
      "Perm",
      "Char",
      "Some codelist",
      TODO,
       // false, not to have infinite recursion
      instantiate_adam_variable_links(0)
    );
  } else {
    adam_variable = adam_variable_create(
      "5",
      "SITEGRy",
      "Pooled Site Group y",
      "Character description of a grouping or pooling of clinical sites for analysis purposes. For example, SITEGR3 is the name of a variable containing site group (pooled site) names, where the grouping has been done according to the third site grouping algorithm, defined in variable metadata; SITEGR3 does not mean the third group of sites.",
      "Perm",
      "Char",
      "Some codelist",
      TODO,
      NULL
    );
  }

  return adam_variable;
}


#ifdef adam_variable_MAIN

void test_adam_variable(int include_optional) {
    adam_variable_t* adam_variable_1 = instantiate_adam_variable(include_optional);

	cJSON* jsonadam_variable_1 = adam_variable_convertToJSON(adam_variable_1);
	printf("adam_variable :\n%s\n", cJSON_Print(jsonadam_variable_1));
	adam_variable_t* adam_variable_2 = adam_variable_parseFromJSON(jsonadam_variable_1);
	cJSON* jsonadam_variable_2 = adam_variable_convertToJSON(adam_variable_2);
	printf("repeating adam_variable:\n%s\n", cJSON_Print(jsonadam_variable_2));
}

int main() {
  test_adam_variable(1);
  test_adam_variable(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_variable_MAIN
#endif // adam_variable_TEST
