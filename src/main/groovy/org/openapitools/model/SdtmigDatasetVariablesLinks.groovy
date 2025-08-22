package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmigClassRef;
import org.openapitools.model.SdtmigDatasetVariableRefElement;
import org.openapitools.model.SdtmigDatasetVariablesRef;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigDatasetVariablesLinks {
    
    SdtmigDatasetVariablesRef self
    
    SdtmDatasetRef modelDataset
    
    SdtmigProductRef parentProduct
    
    SdtmigClassRef parentClass
    
    SdtmigDatasetVariablesRef priorVersion
    
    List<SdtmigDatasetVariableRefElement> datasetVariables = new ArrayList<>()
}
