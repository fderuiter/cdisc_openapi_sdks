package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.RootSendigDatasetVariableRef;
import org.openapitools.model.SdtmClassVariableRef;
import org.openapitools.model.SdtmDatasetVariableRef;
import org.openapitools.model.SendigDatasetRef;
import org.openapitools.model.SendigDatasetVariableRef;
import org.openapitools.model.SendigProductRef;

@Canonical
class SendigDatasetVariableLinks {
    
    SendigDatasetVariableRef self
    
    List<RootCtCodelistRefElement> codelist = new ArrayList<>()
    
    SdtmClassVariableRef modelClassVariable
    
    SdtmDatasetVariableRef modelDatasetVariable
    
    SendigProductRef parentProduct
    
    SendigDatasetRef parentDataset
    
    RootSendigDatasetVariableRef rootItem
    
    SendigDatasetVariableRef priorVersion
}
