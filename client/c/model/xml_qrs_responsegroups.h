/*
 * xml_qrs_responsegroups.h
 *
 * 
 */

#ifndef _xml_qrs_responsegroups_H_
#define _xml_qrs_responsegroups_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_qrs_responsegroups_t xml_qrs_responsegroups_t;

#include "qrs_responsegroups.h"



typedef struct xml_qrs_responsegroups_t {
    struct qrs_responsegroups_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_qrs_responsegroups_t;

__attribute__((deprecated)) xml_qrs_responsegroups_t *xml_qrs_responsegroups_create(
    qrs_responsegroups_t *self
);

void xml_qrs_responsegroups_free(xml_qrs_responsegroups_t *xml_qrs_responsegroups);

xml_qrs_responsegroups_t *xml_qrs_responsegroups_parseFromJSON(cJSON *xml_qrs_responsegroupsJSON);

cJSON *xml_qrs_responsegroups_convertToJSON(xml_qrs_responsegroups_t *xml_qrs_responsegroups);

#endif /* _xml_qrs_responsegroups_H_ */

