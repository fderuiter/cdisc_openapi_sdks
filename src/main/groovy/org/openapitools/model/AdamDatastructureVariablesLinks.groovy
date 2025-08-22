package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamDatastructureVariablesRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVariableRefElement;

@Canonical
class AdamDatastructureVariablesLinks {
    
    AdamDatastructureVariablesRef self
    
    AdamProductRef parentProduct
    
    AdamDatastructureVariablesRef priorVersion
    
    List<AdamVariableRefElement> analysisVariables = new ArrayList<>()
}
