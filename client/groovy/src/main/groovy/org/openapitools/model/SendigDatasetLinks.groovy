package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SendigClassRef;
import org.openapitools.model.SendigDatasetRef;
import org.openapitools.model.SendigProductRef;

@Canonical
class SendigDatasetLinks {
    
    SendigDatasetRef self
    
    SdtmDatasetRef modelDataset
    
    SendigProductRef parentProduct
    
    SendigClassRef parentClass
    
    SendigDatasetRef priorVersion
}
