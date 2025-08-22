package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassDatasetsRef;
import org.openapitools.model.SdtmDatasetRefElement;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmClassDatasetsLinks {
    
    SdtmClassDatasetsRef self
    
    SdtmProductRef parentProduct
    
    SdtmClassDatasetsRef priorVersion
    
    List<SdtmDatasetRefElement> datasets = new ArrayList<>()
}
