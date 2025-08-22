#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdashig_domain.h"



static cdashig_domain_t *cdashig_domain_create_internal(
    char *ordinal,
    char *name,
    char *label,
    cdashig_domain_links_t *_links,
    list_t *fields
    ) {
    cdashig_domain_t *cdashig_domain_local_var = malloc(sizeof(cdashig_domain_t));
    if (!cdashig_domain_local_var) {
        return NULL;
    }
    cdashig_domain_local_var->ordinal = ordinal;
    cdashig_domain_local_var->name = name;
    cdashig_domain_local_var->label = label;
    cdashig_domain_local_var->_links = _links;
    cdashig_domain_local_var->fields = fields;

    cdashig_domain_local_var->_library_owned = 1;
    return cdashig_domain_local_var;
}

__attribute__((deprecated)) cdashig_domain_t *cdashig_domain_create(
    char *ordinal,
    char *name,
    char *label,
    cdashig_domain_links_t *_links,
    list_t *fields
    ) {
    return cdashig_domain_create_internal (
        ordinal,
        name,
        label,
        _links,
        fields
        );
}

void cdashig_domain_free(cdashig_domain_t *cdashig_domain) {
    if(NULL == cdashig_domain){
        return ;
    }
    if(cdashig_domain->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdashig_domain_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdashig_domain->ordinal) {
        free(cdashig_domain->ordinal);
        cdashig_domain->ordinal = NULL;
    }
    if (cdashig_domain->name) {
        free(cdashig_domain->name);
        cdashig_domain->name = NULL;
    }
    if (cdashig_domain->label) {
        free(cdashig_domain->label);
        cdashig_domain->label = NULL;
    }
    if (cdashig_domain->_links) {
        cdashig_domain_links_free(cdashig_domain->_links);
        cdashig_domain->_links = NULL;
    }
    if (cdashig_domain->fields) {
        list_ForEach(listEntry, cdashig_domain->fields) {
            cdashig_domain_field_free(listEntry->data);
        }
        list_freeList(cdashig_domain->fields);
        cdashig_domain->fields = NULL;
    }
    free(cdashig_domain);
}

cJSON *cdashig_domain_convertToJSON(cdashig_domain_t *cdashig_domain) {
    cJSON *item = cJSON_CreateObject();

    // cdashig_domain->ordinal
    if(cdashig_domain->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdashig_domain->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain->name
    if(cdashig_domain->name) {
    if(cJSON_AddStringToObject(item, "name", cdashig_domain->name) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain->label
    if(cdashig_domain->label) {
    if(cJSON_AddStringToObject(item, "label", cdashig_domain->label) == NULL) {
    goto fail; //String
    }
    }


    // cdashig_domain->_links
    if(cdashig_domain->_links) {
    cJSON *_links_local_JSON = cdashig_domain_links_convertToJSON(cdashig_domain->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdashig_domain->fields
    if(cdashig_domain->fields) {
    cJSON *fields = cJSON_AddArrayToObject(item, "fields");
    if(fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fieldsListEntry;
    if (cdashig_domain->fields) {
    list_ForEach(fieldsListEntry, cdashig_domain->fields) {
    cJSON *itemLocal = cdashig_domain_field_convertToJSON(fieldsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(fields, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

cdashig_domain_t *cdashig_domain_parseFromJSON(cJSON *cdashig_domainJSON){

    cdashig_domain_t *cdashig_domain_local_var = NULL;

    // define the local variable for cdashig_domain->_links
    cdashig_domain_links_t *_links_local_nonprim = NULL;

    // define the local list for cdashig_domain->fields
    list_t *fieldsList = NULL;

    // cdashig_domain->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdashig_domainJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdashig_domain->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdashig_domainJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdashig_domain->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdashig_domainJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdashig_domain->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdashig_domainJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdashig_domain_links_parseFromJSON(_links); //nonprimitive
    }

    // cdashig_domain->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(cdashig_domainJSON, "fields");
    if (cJSON_IsNull(fields)) {
        fields = NULL;
    }
    if (fields) { 
    cJSON *fields_local_nonprimitive = NULL;
    if(!cJSON_IsArray(fields)){
        goto end; //nonprimitive container
    }

    fieldsList = list_createList();

    cJSON_ArrayForEach(fields_local_nonprimitive,fields )
    {
        if(!cJSON_IsObject(fields_local_nonprimitive)){
            goto end;
        }
        cdashig_domain_field_t *fieldsItem = cdashig_domain_field_parseFromJSON(fields_local_nonprimitive);

        list_addElement(fieldsList, fieldsItem);
    }
    }


    cdashig_domain_local_var = cdashig_domain_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        fields ? fieldsList : NULL
        );

    return cdashig_domain_local_var;
end:
    if (_links_local_nonprim) {
        cdashig_domain_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fieldsList) {
            cdashig_domain_field_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fieldsList);
        fieldsList = NULL;
    }
    return NULL;

}
