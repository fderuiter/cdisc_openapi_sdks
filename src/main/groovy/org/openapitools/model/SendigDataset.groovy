package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SendigDatasetLinks;
import org.openapitools.model.SendigDatasetVariable;

@Canonical
class SendigDataset {
    
    String ordinal
    
    String name
    
    String label
    
    String description
    
    String datasetStructure
    
    SendigDatasetLinks links
    
    List<SendigDatasetVariable> datasetVariables = new ArrayList<>()
}
