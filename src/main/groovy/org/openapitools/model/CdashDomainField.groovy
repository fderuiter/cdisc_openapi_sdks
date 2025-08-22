package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashDomainFieldLinks;

@Canonical
class CdashDomainField {
    
    String ordinal
    
    String name
    
    String label
    
    String definition
    
    String domainSpecific
    
    String questionText
    
    String prompt
    
    String simpleDatatype
    
    String implementationNotes
    
    String mappingInstructions
    
    CdashDomainFieldLinks links
}
