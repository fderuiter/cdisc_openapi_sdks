package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashProductRef;

@Canonical
class CdashClassLinks {
    
    CdashClassRef self
    
    CdashProductRef parentProduct
    
    CdashClassRef priorVersion
}
