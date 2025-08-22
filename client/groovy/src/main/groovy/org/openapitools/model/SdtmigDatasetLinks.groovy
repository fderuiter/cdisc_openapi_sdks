package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmigClassRef;
import org.openapitools.model.SdtmigDatasetRef;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigDatasetLinks {
    
    SdtmigDatasetRef self
    
    SdtmDatasetRef modelDataset
    
    SdtmigProductRef parentProduct
    
    SdtmigClassRef parentClass
    
    SdtmigDatasetRef priorVersion
}
