package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AdamDatastructureRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVarsetRef;

@Canonical
class AdamVarsetLinks {
    
    AdamVarsetRef self
    
    AdamProductRef parentProduct
    
    AdamDatastructureRef parentDatastructure
    
    AdamVarsetRef priorVersion
}
