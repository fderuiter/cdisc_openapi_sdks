package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ProductgroupRef;
import org.openapitools.model.QrsRefElement;

@Canonical
class ProductgroupQrsLinks {
    
    ProductgroupRef self
    
    List<QrsRefElement> qrs = new ArrayList<>()
}
