package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ProductgroupRef;
import org.openapitools.model.SdtmProductRefElement;
import org.openapitools.model.SdtmigProductRefElement;
import org.openapitools.model.SendigProductRefElement;

@Canonical
class ProductgroupDataTabulationLinks {
    
    ProductgroupRef self
    
    List<SdtmProductRefElement> sdtm = new ArrayList<>()
    
    List<SdtmigProductRefElement> sdtmig = new ArrayList<>()
    
    List<SendigProductRefElement> sendig = new ArrayList<>()
}
