#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "_mdr_search_scopes_get_200_response.h"


char* _mdr_search_scopes_get_200_response_scopes_ToString(cdisc_library_api__mdr_search_scopes_get_200_response__e scopes) {
    char *scopesArray[] =  { "NULL", "class", "codelist", "conceptId", "core", "dataStructure", "datasetStructure", "definition", "description", "domain", "effectiveDate", "extensible", "href", "label", "measureType", "name", "preferredTerm", "product", "productGroup", "registrationStatus", "roleDescription", "sdtmTarget", "simpleDatatype", "submissionValue", "synonyms", "type", "uiHref", "valueDomain", "variableSet", "version" };
    return scopesArray[scopes - 1];
}

cdisc_library_api__mdr_search_scopes_get_200_response__e _mdr_search_scopes_get_200_response_scopes_FromString(char* scopes) {
    int stringToReturn = 0;
    char *scopesArray[] =  { "NULL", "class", "codelist", "conceptId", "core", "dataStructure", "datasetStructure", "definition", "description", "domain", "effectiveDate", "extensible", "href", "label", "measureType", "name", "preferredTerm", "product", "productGroup", "registrationStatus", "roleDescription", "sdtmTarget", "simpleDatatype", "submissionValue", "synonyms", "type", "uiHref", "valueDomain", "variableSet", "version" };
    size_t sizeofArray = sizeof(scopesArray) / sizeof(scopesArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(scopes, scopesArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

static _mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response_create_internal(
    list_t *scopes
    ) {
    _mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response_local_var = malloc(sizeof(_mdr_search_scopes_get_200_response_t));
    if (!_mdr_search_scopes_get_200_response_local_var) {
        return NULL;
    }
    _mdr_search_scopes_get_200_response_local_var->scopes = scopes;

    _mdr_search_scopes_get_200_response_local_var->_library_owned = 1;
    return _mdr_search_scopes_get_200_response_local_var;
}

__attribute__((deprecated)) _mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response_create(
    list_t *scopes
    ) {
    return _mdr_search_scopes_get_200_response_create_internal (
        scopes
        );
}

void _mdr_search_scopes_get_200_response_free(_mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response) {
    if(NULL == _mdr_search_scopes_get_200_response){
        return ;
    }
    if(_mdr_search_scopes_get_200_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "_mdr_search_scopes_get_200_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (_mdr_search_scopes_get_200_response->scopes) {
        list_ForEach(listEntry, _mdr_search_scopes_get_200_response->scopes) {
            default_search_scopes_free(listEntry->data);
        }
        list_freeList(_mdr_search_scopes_get_200_response->scopes);
        _mdr_search_scopes_get_200_response->scopes = NULL;
    }
    free(_mdr_search_scopes_get_200_response);
}

cJSON *_mdr_search_scopes_get_200_response_convertToJSON(_mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response) {
    cJSON *item = cJSON_CreateObject();

    // _mdr_search_scopes_get_200_response->scopes
    if(_mdr_search_scopes_get_200_response->scopes != cdisc_library_api_list_SCOPES_NULL) {
    cJSON *scopes = cJSON_AddArrayToObject(item, "scopes");
    if(scopes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *scopesListEntry;
    if (_mdr_search_scopes_get_200_response->scopes) {
    list_ForEach(scopesListEntry, _mdr_search_scopes_get_200_response->scopes) {
    cJSON *itemLocal = default_search_scopes_convertToJSON((cdisc_library_api__mdr_search_scopes_get_200_response__e)scopesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(scopes, itemLocal);
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

_mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response_parseFromJSON(cJSON *_mdr_search_scopes_get_200_responseJSON){

    _mdr_search_scopes_get_200_response_t *_mdr_search_scopes_get_200_response_local_var = NULL;

    // define the local list for _mdr_search_scopes_get_200_response->scopes
    list_t *scopesList = NULL;

    // _mdr_search_scopes_get_200_response->scopes
    cJSON *scopes = cJSON_GetObjectItemCaseSensitive(_mdr_search_scopes_get_200_responseJSON, "scopes");
    if (cJSON_IsNull(scopes)) {
        scopes = NULL;
    }
    if (scopes) { 
    cJSON *scopes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(scopes)){
        goto end; //nonprimitive container
    }

    scopesList = list_createList();

    cJSON_ArrayForEach(scopes_local_nonprimitive,scopes )
    {
        if(!cJSON_IsObject(scopes_local_nonprimitive)){
            goto end;
        }
        _mdr_search_scopes_get_200_response_default_search_scopes_e scopesItem = default_search_scopes_parseFromJSON(scopes_local_nonprimitive);

        list_addElement(scopesList, (void *)scopesItem);
    }
    }


    _mdr_search_scopes_get_200_response_local_var = _mdr_search_scopes_get_200_response_create_internal (
        scopes ? scopesList : NULL
        );

    return _mdr_search_scopes_get_200_response_local_var;
end:
    if (scopesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, scopesList) {
            default_search_scopes_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(scopesList);
        scopesList = NULL;
    }
    return NULL;

}
