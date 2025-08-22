package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamVariable;
import org.openapitools.model.AdamVarsetLinks;

@Canonical
class AdamVarset {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    AdamVarsetLinks links
    
    List<AdamVariable> analysisVariables = new ArrayList<>()
}
