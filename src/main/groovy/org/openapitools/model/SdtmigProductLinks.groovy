package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmProductRef;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigProductLinks {
    
    SdtmigProductRef self
    
    SdtmProductRef model
    
    SdtmigProductRef priorVersion
}
