package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AdamDatastructureRef;
import org.openapitools.model.AdamProductRef;

@Canonical
class AdamDatastructureLinks {
    
    AdamDatastructureRef self
    
    AdamProductRef parentProduct
    
    AdamDatastructureRef priorVersion
}
