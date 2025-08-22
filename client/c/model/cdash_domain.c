#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cdash_domain.h"



static cdash_domain_t *cdash_domain_create_internal(
    char *ordinal,
    char *name,
    char *label,
    cdash_domain_links_t *_links,
    list_t *fields
    ) {
    cdash_domain_t *cdash_domain_local_var = malloc(sizeof(cdash_domain_t));
    if (!cdash_domain_local_var) {
        return NULL;
    }
    cdash_domain_local_var->ordinal = ordinal;
    cdash_domain_local_var->name = name;
    cdash_domain_local_var->label = label;
    cdash_domain_local_var->_links = _links;
    cdash_domain_local_var->fields = fields;

    cdash_domain_local_var->_library_owned = 1;
    return cdash_domain_local_var;
}

__attribute__((deprecated)) cdash_domain_t *cdash_domain_create(
    char *ordinal,
    char *name,
    char *label,
    cdash_domain_links_t *_links,
    list_t *fields
    ) {
    return cdash_domain_create_internal (
        ordinal,
        name,
        label,
        _links,
        fields
        );
}

void cdash_domain_free(cdash_domain_t *cdash_domain) {
    if(NULL == cdash_domain){
        return ;
    }
    if(cdash_domain->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cdash_domain_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cdash_domain->ordinal) {
        free(cdash_domain->ordinal);
        cdash_domain->ordinal = NULL;
    }
    if (cdash_domain->name) {
        free(cdash_domain->name);
        cdash_domain->name = NULL;
    }
    if (cdash_domain->label) {
        free(cdash_domain->label);
        cdash_domain->label = NULL;
    }
    if (cdash_domain->_links) {
        cdash_domain_links_free(cdash_domain->_links);
        cdash_domain->_links = NULL;
    }
    if (cdash_domain->fields) {
        list_ForEach(listEntry, cdash_domain->fields) {
            cdash_domain_field_free(listEntry->data);
        }
        list_freeList(cdash_domain->fields);
        cdash_domain->fields = NULL;
    }
    free(cdash_domain);
}

cJSON *cdash_domain_convertToJSON(cdash_domain_t *cdash_domain) {
    cJSON *item = cJSON_CreateObject();

    // cdash_domain->ordinal
    if(cdash_domain->ordinal) {
    if(cJSON_AddStringToObject(item, "ordinal", cdash_domain->ordinal) == NULL) {
    goto fail; //String
    }
    }


    // cdash_domain->name
    if(cdash_domain->name) {
    if(cJSON_AddStringToObject(item, "name", cdash_domain->name) == NULL) {
    goto fail; //String
    }
    }


    // cdash_domain->label
    if(cdash_domain->label) {
    if(cJSON_AddStringToObject(item, "label", cdash_domain->label) == NULL) {
    goto fail; //String
    }
    }


    // cdash_domain->_links
    if(cdash_domain->_links) {
    cJSON *_links_local_JSON = cdash_domain_links_convertToJSON(cdash_domain->_links);
    if(_links_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "_links", _links_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // cdash_domain->fields
    if(cdash_domain->fields) {
    cJSON *fields = cJSON_AddArrayToObject(item, "fields");
    if(fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fieldsListEntry;
    if (cdash_domain->fields) {
    list_ForEach(fieldsListEntry, cdash_domain->fields) {
    cJSON *itemLocal = cdash_domain_field_convertToJSON(fieldsListEntry->data);
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

cdash_domain_t *cdash_domain_parseFromJSON(cJSON *cdash_domainJSON){

    cdash_domain_t *cdash_domain_local_var = NULL;

    // define the local variable for cdash_domain->_links
    cdash_domain_links_t *_links_local_nonprim = NULL;

    // define the local list for cdash_domain->fields
    list_t *fieldsList = NULL;

    // cdash_domain->ordinal
    cJSON *ordinal = cJSON_GetObjectItemCaseSensitive(cdash_domainJSON, "ordinal");
    if (cJSON_IsNull(ordinal)) {
        ordinal = NULL;
    }
    if (ordinal) { 
    if(!cJSON_IsString(ordinal) && !cJSON_IsNull(ordinal))
    {
    goto end; //String
    }
    }

    // cdash_domain->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(cdash_domainJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // cdash_domain->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(cdash_domainJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // cdash_domain->_links
    cJSON *_links = cJSON_GetObjectItemCaseSensitive(cdash_domainJSON, "_links");
    if (cJSON_IsNull(_links)) {
        _links = NULL;
    }
    if (_links) { 
    _links_local_nonprim = cdash_domain_links_parseFromJSON(_links); //nonprimitive
    }

    // cdash_domain->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(cdash_domainJSON, "fields");
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
        cdash_domain_field_t *fieldsItem = cdash_domain_field_parseFromJSON(fields_local_nonprimitive);

        list_addElement(fieldsList, fieldsItem);
    }
    }


    cdash_domain_local_var = cdash_domain_create_internal (
        ordinal && !cJSON_IsNull(ordinal) ? strdup(ordinal->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        _links ? _links_local_nonprim : NULL,
        fields ? fieldsList : NULL
        );

    return cdash_domain_local_var;
end:
    if (_links_local_nonprim) {
        cdash_domain_links_free(_links_local_nonprim);
        _links_local_nonprim = NULL;
    }
    if (fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fieldsList) {
            cdash_domain_field_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fieldsList);
        fieldsList = NULL;
    }
    return NULL;

}
