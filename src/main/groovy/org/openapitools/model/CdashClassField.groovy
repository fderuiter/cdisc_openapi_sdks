package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashClassFieldLinks;

@Canonical
class CdashClassField {
    
    String ordinal
    
    String name
    
    String label
    
    String definition
    
    String questionText
    
    String prompt
    
    String simpleDatatype
    
    String implementationNotes
    
    String mappingInstructions
    
    CdashClassFieldLinks links
}
