package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmDatasetVariableRefElement;
import org.openapitools.model.SdtmDatasetVariablesRef;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmDatasetVariablesLinks {
    
    SdtmDatasetVariablesRef self
    
    SdtmProductRef parentProduct
    
    SdtmClassRef parentClass
    
    SdtmDatasetVariablesRef priorVersion
    
    List<SdtmDatasetVariableRefElement> datasetVariables = new ArrayList<>()
}
