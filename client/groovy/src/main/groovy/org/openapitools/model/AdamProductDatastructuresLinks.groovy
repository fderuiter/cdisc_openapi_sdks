package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamDatastructureRefElement;
import org.openapitools.model.AdamProductDatastructuresRef;

@Canonical
class AdamProductDatastructuresLinks {
    
    AdamProductDatastructuresRef self
    
    AdamProductDatastructuresRef priorVersion
    
    List<AdamDatastructureRefElement> dataStructures = new ArrayList<>()
}
