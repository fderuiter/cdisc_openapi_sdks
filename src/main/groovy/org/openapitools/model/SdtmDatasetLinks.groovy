package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmDatasetLinks {
    
    SdtmDatasetRef self
    
    SdtmProductRef parentProduct
    
    SdtmClassRef parentClass
    
    SdtmDatasetRef priorVersion
}
