package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ExportCdashClassVariablesRow {
    
    String version
    
    String propertyClass
    
    String domain
    
    String variableOrder
    
    String cdASHVariable
    
    String cdASHVariableLabel
    
    String drAFTCDASHDefinition
    
    String domainSpecific
    
    String questionText
    
    String prompt
    
    String type
    
    List<String> sdTMTarget = new ArrayList<>()
    
    String mappingInstructions
    
    String controlledTerminologyCodelistName
    
    String implementationNotes
}
