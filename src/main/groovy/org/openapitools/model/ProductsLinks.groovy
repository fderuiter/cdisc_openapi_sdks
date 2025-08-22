package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ProductgroupDataAnalysis;
import org.openapitools.model.ProductgroupDataCollection;
import org.openapitools.model.ProductgroupDataTabulation;
import org.openapitools.model.ProductgroupQrs;
import org.openapitools.model.ProductgroupTerminology;
import org.openapitools.model.ProductsRef;

@Canonical
class ProductsLinks {
    
    ProductsRef self
    
    ProductgroupDataCollection dataCollection
    
    ProductgroupDataTabulation dataTabulation
    
    ProductgroupDataAnalysis dataAnalysis
    
    ProductgroupTerminology terminology
    
    ProductgroupQrs measure
}
