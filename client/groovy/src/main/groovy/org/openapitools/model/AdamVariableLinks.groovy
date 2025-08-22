package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AdamDatastructureRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVariableRef;
import org.openapitools.model.AdamVarsetRef;
import org.openapitools.model.RootCtCodelistRef;

@Canonical
class AdamVariableLinks {
    
    AdamVariableRef self
    
    RootCtCodelistRef codelist
    
    AdamProductRef parentProduct
    
    AdamDatastructureRef parentDatastructure
    
    AdamVarsetRef parentVariableSet
    
    AdamVariableRef priorVersion
}
