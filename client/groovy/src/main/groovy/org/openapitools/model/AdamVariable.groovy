package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamVariableLinks;

@Canonical
class AdamVariable {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String core
    
    String simpleDatatype
    
    String describedValueDomain
    
    List<String> valueList = new ArrayList<>()
    
    AdamVariableLinks links
}
