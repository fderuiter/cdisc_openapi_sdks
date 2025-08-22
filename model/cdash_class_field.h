/*
 * cdash_class_field.h
 *
 * 
 */

#ifndef _cdash_class_field_H_
#define _cdash_class_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cdash_class_field_t cdash_class_field_t;

#include "cdash_class_field_links.h"



typedef struct cdash_class_field_t {
    char *ordinal; // string
    char *name; // string
    char *label; // string
    char *definition; // string
    char *question_text; // string
    char *prompt; // string
    char *simple_datatype; // string
    char *implementation_notes; // string
    char *mapping_instructions; // string
    struct cdash_class_field_links_t *_links; //model

    int _library_owned; // Is the library responsible for freeing this object?
} cdash_class_field_t;

__attribute__((deprecated)) cdash_class_field_t *cdash_class_field_create(
    char *ordinal,
    char *name,
    char *label,
    char *definition,
    char *question_text,
    char *prompt,
    char *simple_datatype,
    char *implementation_notes,
    char *mapping_instructions,
    cdash_class_field_links_t *_links
);

void cdash_class_field_free(cdash_class_field_t *cdash_class_field);

cdash_class_field_t *cdash_class_field_parseFromJSON(cJSON *cdash_class_fieldJSON);

cJSON *cdash_class_field_convertToJSON(cdash_class_field_t *cdash_class_field);

#endif /* _cdash_class_field_H_ */

