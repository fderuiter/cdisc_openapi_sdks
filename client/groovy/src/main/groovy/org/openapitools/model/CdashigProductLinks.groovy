package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashProductRef;
import org.openapitools.model.CdashigProductRef;

@Canonical
class CdashigProductLinks {
    
    CdashigProductRef self
    
    CdashProductRef model
    
    CdashigProductRef priorVersion
}
