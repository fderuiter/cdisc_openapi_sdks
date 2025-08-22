/*
 * xml_qrs_responsegroup.h
 *
 * 
 */

#ifndef _xml_qrs_responsegroup_H_
#define _xml_qrs_responsegroup_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct xml_qrs_responsegroup_t xml_qrs_responsegroup_t;

#include "qrs_responsegroup.h"



typedef struct xml_qrs_responsegroup_t {
    struct qrs_responsegroup_t *self; //model

    int _library_owned; // Is the library responsible for freeing this object?
} xml_qrs_responsegroup_t;

__attribute__((deprecated)) xml_qrs_responsegroup_t *xml_qrs_responsegroup_create(
    qrs_responsegroup_t *self
);

void xml_qrs_responsegroup_free(xml_qrs_responsegroup_t *xml_qrs_responsegroup);

xml_qrs_responsegroup_t *xml_qrs_responsegroup_parseFromJSON(cJSON *xml_qrs_responsegroupJSON);

cJSON *xml_qrs_responsegroup_convertToJSON(xml_qrs_responsegroup_t *xml_qrs_responsegroup);

#endif /* _xml_qrs_responsegroup_H_ */

