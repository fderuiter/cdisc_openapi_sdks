package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigDatasetRefElement;
import org.openapitools.model.SdtmigDatasetsRef;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigDatasetsLinks {
    
    SdtmigDatasetsRef self
    
    SdtmigProductRef parentProduct
    
    SdtmigDatasetsRef priorVersion
    
    List<SdtmigDatasetRefElement> datasets = new ArrayList<>()
}
