package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashProductRefElement;
import org.openapitools.model.CdashigProductRefElement;
import org.openapitools.model.ProductgroupRef;

@Canonical
class ProductgroupDataCollectionLinks {
    
    ProductgroupRef self
    
    List<CdashProductRefElement> cdash = new ArrayList<>()
    
    List<CdashigProductRefElement> cdashig = new ArrayList<>()
}
