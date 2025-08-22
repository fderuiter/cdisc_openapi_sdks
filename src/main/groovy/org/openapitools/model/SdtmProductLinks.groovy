package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmProductLinks {
    
    SdtmProductRef self
    
    SdtmProductRef priorVersion
}
