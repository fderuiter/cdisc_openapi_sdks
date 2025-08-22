package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AdamProductRefElement;
import org.openapitools.model.ProductgroupRef;

@Canonical
class ProductgroupDataAnalysisLinks {
    
    ProductgroupRef self
    
    List<AdamProductRefElement> adam = new ArrayList<>()
}
