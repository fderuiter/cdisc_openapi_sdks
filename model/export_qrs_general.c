#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "export_qrs_general.h"



static export_qrs_general_t *export_qrs_general_create_internal(
    char *name,
    char *label,
    char *effective_date,
    char *description,
    char *type,
    char *categorys_codelist_c_code,
    char *categorys_term_c_code
    ) {
    export_qrs_general_t *export_qrs_general_local_var = malloc(sizeof(export_qrs_general_t));
    if (!export_qrs_general_local_var) {
        return NULL;
    }
    export_qrs_general_local_var->name = name;
    export_qrs_general_local_var->label = label;
    export_qrs_general_local_var->effective_date = effective_date;
    export_qrs_general_local_var->description = description;
    export_qrs_general_local_var->type = type;
    export_qrs_general_local_var->categorys_codelist_c_code = categorys_codelist_c_code;
    export_qrs_general_local_var->categorys_term_c_code = categorys_term_c_code;

    export_qrs_general_local_var->_library_owned = 1;
    return export_qrs_general_local_var;
}

__attribute__((deprecated)) export_qrs_general_t *export_qrs_general_create(
    char *name,
    char *label,
    char *effective_date,
    char *description,
    char *type,
    char *categorys_codelist_c_code,
    char *categorys_term_c_code
    ) {
    return export_qrs_general_create_internal (
        name,
        label,
        effective_date,
        description,
        type,
        categorys_codelist_c_code,
        categorys_term_c_code
        );
}

void export_qrs_general_free(export_qrs_general_t *export_qrs_general) {
    if(NULL == export_qrs_general){
        return ;
    }
    if(export_qrs_general->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "export_qrs_general_free");
        return ;
    }
    listEntry_t *listEntry;
    if (export_qrs_general->name) {
        free(export_qrs_general->name);
        export_qrs_general->name = NULL;
    }
    if (export_qrs_general->label) {
        free(export_qrs_general->label);
        export_qrs_general->label = NULL;
    }
    if (export_qrs_general->effective_date) {
        free(export_qrs_general->effective_date);
        export_qrs_general->effective_date = NULL;
    }
    if (export_qrs_general->description) {
        free(export_qrs_general->description);
        export_qrs_general->description = NULL;
    }
    if (export_qrs_general->type) {
        free(export_qrs_general->type);
        export_qrs_general->type = NULL;
    }
    if (export_qrs_general->categorys_codelist_c_code) {
        free(export_qrs_general->categorys_codelist_c_code);
        export_qrs_general->categorys_codelist_c_code = NULL;
    }
    if (export_qrs_general->categorys_term_c_code) {
        free(export_qrs_general->categorys_term_c_code);
        export_qrs_general->categorys_term_c_code = NULL;
    }
    free(export_qrs_general);
}

cJSON *export_qrs_general_convertToJSON(export_qrs_general_t *export_qrs_general) {
    cJSON *item = cJSON_CreateObject();

    // export_qrs_general->name
    if(export_qrs_general->name) {
    if(cJSON_AddStringToObject(item, "Name", export_qrs_general->name) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_general->label
    if(export_qrs_general->label) {
    if(cJSON_AddStringToObject(item, "Label", export_qrs_general->label) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_general->effective_date
    if(export_qrs_general->effective_date) {
    if(cJSON_AddStringToObject(item, "Effective Date", export_qrs_general->effective_date) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_general->description
    if(export_qrs_general->description) {
    if(cJSON_AddStringToObject(item, "Description", export_qrs_general->description) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_general->type
    if(export_qrs_general->type) {
    if(cJSON_AddStringToObject(item, "Type", export_qrs_general->type) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_general->categorys_codelist_c_code
    if(export_qrs_general->categorys_codelist_c_code) {
    if(cJSON_AddStringToObject(item, "Category's Codelist C-Code", export_qrs_general->categorys_codelist_c_code) == NULL) {
    goto fail; //String
    }
    }


    // export_qrs_general->categorys_term_c_code
    if(export_qrs_general->categorys_term_c_code) {
    if(cJSON_AddStringToObject(item, "Category's Term C-Code", export_qrs_general->categorys_term_c_code) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

export_qrs_general_t *export_qrs_general_parseFromJSON(cJSON *export_qrs_generalJSON){

    export_qrs_general_t *export_qrs_general_local_var = NULL;

    // export_qrs_general->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // export_qrs_general->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // export_qrs_general->effective_date
    cJSON *effective_date = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Effective Date");
    if (cJSON_IsNull(effective_date)) {
        effective_date = NULL;
    }
    if (effective_date) { 
    if(!cJSON_IsString(effective_date) && !cJSON_IsNull(effective_date))
    {
    goto end; //String
    }
    }

    // export_qrs_general->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // export_qrs_general->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // export_qrs_general->categorys_codelist_c_code
    cJSON *categorys_codelist_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Category's Codelist C-Code");
    if (cJSON_IsNull(categorys_codelist_c_code)) {
        categorys_codelist_c_code = NULL;
    }
    if (categorys_codelist_c_code) { 
    if(!cJSON_IsString(categorys_codelist_c_code) && !cJSON_IsNull(categorys_codelist_c_code))
    {
    goto end; //String
    }
    }

    // export_qrs_general->categorys_term_c_code
    cJSON *categorys_term_c_code = cJSON_GetObjectItemCaseSensitive(export_qrs_generalJSON, "Category's Term C-Code");
    if (cJSON_IsNull(categorys_term_c_code)) {
        categorys_term_c_code = NULL;
    }
    if (categorys_term_c_code) { 
    if(!cJSON_IsString(categorys_term_c_code) && !cJSON_IsNull(categorys_term_c_code))
    {
    goto end; //String
    }
    }


    export_qrs_general_local_var = export_qrs_general_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        effective_date && !cJSON_IsNull(effective_date) ? strdup(effective_date->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        categorys_codelist_c_code && !cJSON_IsNull(categorys_codelist_c_code) ? strdup(categorys_codelist_c_code->valuestring) : NULL,
        categorys_term_c_code && !cJSON_IsNull(categorys_term_c_code) ? strdup(categorys_term_c_code->valuestring) : NULL
        );

    return export_qrs_general_local_var;
end:
    return NULL;

}
