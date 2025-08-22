package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamDatastructureLinks;
import org.openapitools.model.AdamVarset;

@Canonical
class AdamDatastructure {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String propertyClass
    
    AdamDatastructureLinks links
    
    List<AdamVarset> analysisVariableSets = new ArrayList<>()
}
