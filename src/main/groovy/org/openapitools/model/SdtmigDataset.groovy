package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigDatasetLinks;
import org.openapitools.model.SdtmigDatasetVariable;

@Canonical
class SdtmigDataset {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String datasetStructure
    
    SdtmigDatasetLinks links
    
    List<SdtmigDatasetVariable> datasetVariables = new ArrayList<>()
}
