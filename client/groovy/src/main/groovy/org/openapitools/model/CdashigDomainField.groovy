package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashigDomainFieldLinks;

@Canonical
class CdashigDomainField {
    
    String ordinal
    
    String name
    
    String label
    
    String definition
    
    String questionText
    
    String prompt
    
    String completionInstructions
    
    String implementationNotes
    
    String simpleDatatype
    
    String mappingInstructions
    
    String core
    
    CdashigDomainFieldLinks links
}
