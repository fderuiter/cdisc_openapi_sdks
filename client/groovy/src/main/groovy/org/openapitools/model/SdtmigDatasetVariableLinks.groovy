package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.RootSdtmigDatasetVariableRef;
import org.openapitools.model.SdtmClassVariableRef;
import org.openapitools.model.SdtmDatasetVariableRef;
import org.openapitools.model.SdtmigDatasetRef;
import org.openapitools.model.SdtmigDatasetVariableRef;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigDatasetVariableLinks {
    
    SdtmigDatasetVariableRef self
    
    List<RootCtCodelistRefElement> codelist = new ArrayList<>()
    
    SdtmClassVariableRef modelClassVariable
    
    SdtmDatasetVariableRef modelDatasetVariable
    
    SdtmigProductRef parentProduct
    
    SdtmigDatasetRef parentDataset
    
    RootSdtmigDatasetVariableRef rootItem
    
    SdtmigDatasetVariableRef priorVersion
}
