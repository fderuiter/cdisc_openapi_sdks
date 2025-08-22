package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmDatasetLinks;
import org.openapitools.model.SdtmDatasetVariable;

@Canonical
class SdtmDataset {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String datasetStructure
    
    SdtmDatasetLinks links
    
    List<SdtmDatasetVariable> datasetVariables = new ArrayList<>()
}
