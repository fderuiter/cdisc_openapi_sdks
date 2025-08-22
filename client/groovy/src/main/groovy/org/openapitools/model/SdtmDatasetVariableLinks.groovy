package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.RootSdtmDatasetVariableRef;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmDatasetVariableRef;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmDatasetVariableLinks {
    
    SdtmDatasetVariableRef self
    
    SdtmProductRef parentProduct
    
    SdtmDatasetRef parentDataset
    
    RootSdtmDatasetVariableRef rootItem
    
    SdtmDatasetVariableRef priorVersion
}
