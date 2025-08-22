package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmigClassRef;
import org.openapitools.model.SdtmigClassRefSubclass;
import org.openapitools.model.SdtmigProductRef;

@Canonical
class SdtmigClassLinks {
    
    SdtmigClassRef self
    
    SdtmClassRef modelClass
    
    SdtmigProductRef parentProduct
    
    SdtmigClassRef parentClass
    
    List<SdtmigClassRefSubclass> subclasses = new ArrayList<>()
    
    SdtmigClassRef priorVersion
}
