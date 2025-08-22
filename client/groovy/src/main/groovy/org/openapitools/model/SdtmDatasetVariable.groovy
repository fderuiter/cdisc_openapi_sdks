package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmDatasetVariableLinks;

@Canonical
class SdtmDatasetVariable {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String role
    
    String roleDescription
    
    String simpleDatatype
    
    String describedValueDomain
    
    SdtmDatasetVariableLinks links
}
