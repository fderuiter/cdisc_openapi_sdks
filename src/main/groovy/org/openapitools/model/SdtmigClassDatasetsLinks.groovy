package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigClassDatasetsRef;
import org.openapitools.model.SdtmigDatasetRefElement;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigClassDatasetsLinks {
    
    SdtmigClassDatasetsRef self
    
    SdtmigProductRef parentProduct
    
    SdtmigClassDatasetsRef priorVersion
    
    List<SdtmigDatasetRefElement> datasets = new ArrayList<>()
}
