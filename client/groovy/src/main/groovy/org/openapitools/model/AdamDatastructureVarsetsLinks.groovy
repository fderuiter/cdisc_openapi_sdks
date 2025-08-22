package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamDatastructureVarsetsRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVarsetRefElement;

@Canonical
class AdamDatastructureVarsetsLinks {
    
    AdamDatastructureVarsetsRef self
    
    AdamProductRef parentProduct
    
    AdamDatastructureVarsetsRef priorVersion
    
    List<AdamVarsetRefElement> analysisVariableSets = new ArrayList<>()
}
