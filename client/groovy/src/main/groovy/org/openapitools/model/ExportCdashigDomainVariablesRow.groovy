package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ExportCdashigDomainVariablesRow {
    
    String version
    
    String propertyClass
    
    String domain
    
    String dataCollectionScenario
    
    String variableOrder
    
    String cdASHIGVariable
    
    String cdASHIGVariableLabel
    
    String drAFTCDASHIGDefinition
    
    String questionText
    
    String prompt
    
    String type
    
    String cdASHIGCore
    
    String caseReportFormCompletionInstructions
    
    List<String> sdTMIGTarget = new ArrayList<>()
    
    String mappingInstructions
    
    String controlledTerminologyCodelistName
    
    String implementationNotes
}
