#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_class_scenarios.h"



static cdashig_class_scenarios_t *cdashig_class_scenarios_create_internal(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdashig_class_scenarios_links_t *_links
    ) {
    cdashig_class_scenarios_t *cdashig_class_scenarios_local_var = malloc(sizeof(cdashig_class_scenarios_t));
    if (!cdashig_class_scenarios_local_var) {
        return NULL;
    }
    cdashig_class_scenarios_local_var->ordinal = ordinal;
    cdashig_class_scenarios_local_var->name = name;
    cdashig_class_scenarios_local_var->label = label;
    cdashig_class_scenarios_local_var->description = description;
    cdashig_class_scenarios_local_var->_links = _links;

    cdashig_class_scenarios_local_var->_library_owned = 1;
    return cdashig_class_scenarios_local_var;
}

__attribute__((deprecated)) cdashig_class_scenarios_t *cdashig_class_scenarios_create(
    char *ordinal,
    char *name,
    char *label,
    char *description,
    cdashig_class_scenarios_links_t *_links
    ) {
    return cdashig_class_scenarios_create_internal (
        ordinal,
        name,
        label,
        description,
        _links
        );
}

void cdashig_class_scenarios_free(cdashig_class_scenarios_t *cdashig_class_scenarios) {
    if(NULL == cdashig_class_scenarios){
        return ;
    }
    if(cdashig_class_scenarios->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_class_scenarios_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_class_scenarios->ordinal) {
        free(cdashig_class_scenarios->ordinal);
        cdashig_class_scenarios->ordinal = NULL;
    }
    if (cdashig_class_scenarios->name) {
        free(cdashig_class_scenarios->name);
        cdashig_class_scenarios->name = NULL;
    }
    if (cdashig_class_scenarios->label) {
        free(cdashig_class_scenarios->label);
        cdashig_class_scenarios->label = NULL;
    }
    if (cdashig_class_scenarios->description) {
        free(cdashig_class_scenarios->description);
        cdashig_class_scenarios->description = NULL;
    }
    if (cdashig_class_scenarios->_links) {
        cdashig_class_scenarios_links_free(cdashig_class_scenarios->_links);
        cdashig_class_scenarios->_links = NULL;
    }
    free(cdashig_class_scenarios);
}

cJSON *cdashig_class_scenarios_convertToJSON(cdashig_class_scenarios_t *cdashig_class_scenarios) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_class_scenarios->ordinal
    if(cdashig_class_scenarios->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_class_scenarios->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class_scenarios->name
    if(cdashig_class_scenarios->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_class_scenarios->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class_scenarios->label
    if(cdashig_class_scenarios->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_class_scenarios->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class_scenarios->description
    if(cdashig_class_scenarios->description) {
    if(cJSON_AddStringToObject(item, "description", cdashig_class_scenarios->description) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_class_scenarios->_links
    if(cdashig_class_scenarios->_links) {
    cJSON *_links_local_JSON = cdashig_class_scenarios_links_convertToJSON(cdashig_class_scenarios->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cdashig_class_scenarios_t *cdashig_class_scenarios_parseFromJSON(cJSON *cdashig_class_scenariosJSON){

    cdashig_class_scenarios_t *cdashig_class_scenarios_local_var = NULL;

    // define the local variable for cdashig_class_scenarios->_links
    cdashig_class_scenarios_links_t *_links_local_nonprim = NULL;

    // cdashig_class_scenarios->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenariosJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_class_scenarios->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenariosJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_class_scenarios->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenariosJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_class_scenarios->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenariosJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // cdashig_class_scenarios->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_class_scenariosJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_class_scenarios_links_parseFromJSON(_links); //nonprimitive
    }


    cdashig_class_scenarios_local_var = cdashig_class_scenarios_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL
        );

    return cdashig_class_scenarios_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_class_scenarios_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    return NULL;

}
