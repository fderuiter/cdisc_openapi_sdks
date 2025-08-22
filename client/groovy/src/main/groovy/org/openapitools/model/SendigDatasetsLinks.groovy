package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SendigDatasetRefElement;
import org.openapitools.model.SendigDatasetsRef;
import org.openapitools.model.SendigProductRef;

@Canonical
class SendigDatasetsLinks {
    
    SendigDatasetsRef self
    
    SendigProductRef parentProduct
    
    List<SendigDatasetRefElement> datasets = new ArrayList<>()
}
