package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SendigClassRef;
import org.openapitools.model.SendigDatasetVariableRefElement;
import org.openapitools.model.SendigDatasetVariablesRef;
import org.openapitools.model.SendigProductRef;

@Canonical
class SendigDatasetVariablesLinks {
    
    SendigDatasetVariablesRef self
    
    SdtmDatasetRef modelDataset
    
    SendigProductRef parentProduct
    
    SendigClassRef parentClass
    
    SendigDatasetVariablesRef priorVersion
    
    List<SendigDatasetVariableRefElement> datasetVariables = new ArrayList<>()
}
