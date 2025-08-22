package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ExportAdamVariablesRow {
    
    String version
    
    String dataStructureName
    
    String datasetName
    
    String variableGroup
    
    String variableName
    
    String variableLabel
    
    String type
    
    String codelistControlledTerms
    
    String core
    
    String cdISCNotes
}
