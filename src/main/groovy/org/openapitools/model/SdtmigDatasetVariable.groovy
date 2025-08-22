package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigDatasetVariableLinks;

@Canonical
class SdtmigDatasetVariable {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String role
    
    String simpleDatatype
    
    String core
    
    String describedValueDomain
    
    List<String> valueList = new ArrayList<>()
    
    SdtmigDatasetVariableLinks links
}
