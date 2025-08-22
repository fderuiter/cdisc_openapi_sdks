#ifndef adam_product_datastructures_TEST
#define adam_product_datastructures_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define adam_product_datastructures_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/adam_product_datastructures.h"
adam_product_datastructures_t* instantiate_adam_product_datastructures(int include_optional);

#include "test_adam_product_datastructures_links.c"


adam_product_datastructures_t* instantiate_adam_product_datastructures(int include_optional) {
  adam_product_datastructures_t* adam_product_datastructures = NULL;
  if (include_optional) {
    adam_product_datastructures = adam_product_datastructures_create(
      "ADaMIG v1.1",
      "Analysis Data Model Implementation Guide Version 1.1",
      "This document comprises the Clinical Data Interchange Standards Consortium (CDISC) Version 1.1 of the Analysis Data Model Implementation Guide (ADaMIG), which has been prepared by the Analysis Data Model (ADaM) Team of CDISC. The ADaMIG specifies ADaM standard dataset structures and variables, including naming conventions. It also specifies standard solutions to implementation issues.

The ADaMIG must be used in close concert with the current version of the document titled "Analysis Data Model (ADaM)" which is available for download at http://www.cdisc.org/adam. That document explains the purpose of the Analysis Data Model. It describes fundamental principles that apply to all analysis datasets, with the driving principle being that the design of ADaM datasets and associated metadata facilitate explicit communication of the content of, input to, and purpose of submitted ADaM datasets. The Analysis Data Model supports efficient generation, replication, and review of analysis results.",
      "Prepared by the CDISC Analysis Data Model Team",
      "2016-02-12",
      "Final",
      "1.1",
       // false, not to have infinite recursion
      instantiate_adam_product_datastructures_links(0)
    );
  } else {
    adam_product_datastructures = adam_product_datastructures_create(
      "ADaMIG v1.1",
      "Analysis Data Model Implementation Guide Version 1.1",
      "This document comprises the Clinical Data Interchange Standards Consortium (CDISC) Version 1.1 of the Analysis Data Model Implementation Guide (ADaMIG), which has been prepared by the Analysis Data Model (ADaM) Team of CDISC. The ADaMIG specifies ADaM standard dataset structures and variables, including naming conventions. It also specifies standard solutions to implementation issues.

The ADaMIG must be used in close concert with the current version of the document titled "Analysis Data Model (ADaM)" which is available for download at http://www.cdisc.org/adam. That document explains the purpose of the Analysis Data Model. It describes fundamental principles that apply to all analysis datasets, with the driving principle being that the design of ADaM datasets and associated metadata facilitate explicit communication of the content of, input to, and purpose of submitted ADaM datasets. The Analysis Data Model supports efficient generation, replication, and review of analysis results.",
      "Prepared by the CDISC Analysis Data Model Team",
      "2016-02-12",
      "Final",
      "1.1",
      NULL
    );
  }

  return adam_product_datastructures;
}


#ifdef adam_product_datastructures_MAIN

void test_adam_product_datastructures(int include_optional) {
    adam_product_datastructures_t* adam_product_datastructures_1 = instantiate_adam_product_datastructures(include_optional);

	cJSON* jsonadam_product_datastructures_1 = adam_product_datastructures_convertToJSON(adam_product_datastructures_1);
	printf("adam_product_datastructures :\n%s\n", cJSON_Print(jsonadam_product_datastructures_1));
	adam_product_datastructures_t* adam_product_datastructures_2 = adam_product_datastructures_parseFromJSON(jsonadam_product_datastructures_1);
	cJSON* jsonadam_product_datastructures_2 = adam_product_datastructures_convertToJSON(adam_product_datastructures_2);
	printf("repeating adam_product_datastructures:\n%s\n", cJSON_Print(jsonadam_product_datastructures_2));
}

int main() {
  test_adam_product_datastructures(1);
  test_adam_product_datastructures(0);

  printf("Hello world \n");
  return 0;
}

#endif // adam_product_datastructures_MAIN
#endif // adam_product_datastructures_TEST
