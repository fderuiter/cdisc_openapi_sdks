package org.openapitools.model;

import groovy.transform.Canonical

enum DefaultSearchScopes {

    propertyClass("class"),
    
    CODELIST("codelist"),
    
    CONCEPT_ID("conceptId"),
    
    CORE("core"),
    
    DATA_STRUCTURE("dataStructure"),
    
    DATASET_STRUCTURE("datasetStructure"),
    
    DEFINITION("definition"),
    
    DESCRIPTION("description"),
    
    DOMAIN("domain"),
    
    EFFECTIVE_DATE("effectiveDate"),
    
    EXTENSIBLE("extensible"),
    
    HREF("href"),
    
    LABEL("label"),
    
    MEASURE_TYPE("measureType"),
    
    NAME("name"),
    
    PREFERRED_TERM("preferredTerm"),
    
    PRODUCT("product"),
    
    PRODUCT_GROUP("productGroup"),
    
    REGISTRATION_STATUS("registrationStatus"),
    
    ROLE_DESCRIPTION("roleDescription"),
    
    SDTM_TARGET("sdtmTarget"),
    
    SIMPLE_DATATYPE("simpleDatatype"),
    
    SUBMISSION_VALUE("submissionValue"),
    
    SYNONYMS("synonyms"),
    
    TYPE("type"),
    
    UI_HREF("uiHref"),
    
    VALUE_DOMAIN("valueDomain"),
    
    VARIABLE_SET("variableSet"),
    
    VERSION("version")

    private final String value

    DefaultSearchScopes(String value) {
        this.value = value
    }

    String getValue() {
        value
    }

    @Override
    String toString() {
        String.valueOf(value)
    }
}
