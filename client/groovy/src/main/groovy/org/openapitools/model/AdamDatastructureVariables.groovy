package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AdamDatastructureVariablesLinks;

@Canonical
class AdamDatastructureVariables {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String propertyClass
    
    AdamDatastructureVariablesLinks links
}
