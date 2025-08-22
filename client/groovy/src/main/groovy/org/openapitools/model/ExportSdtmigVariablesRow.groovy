package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ExportSdtmigVariablesRow {
    
    String version
    
    String variableOrder
    
    String propertyClass
    
    String datasetName
    
    String variableName
    
    String variableLabel
    
    String type
    
    String controlledTermsCommaCodelistOrFormat
    
    String role
    
    String cdISCNotes
    
    String core
}
