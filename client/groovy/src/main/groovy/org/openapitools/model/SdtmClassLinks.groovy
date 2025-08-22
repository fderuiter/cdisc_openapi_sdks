package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmClassRefSubclass;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmClassLinks {
    
    SdtmClassRef self
    
    SdtmProductRef parentProduct
    
    SdtmClassRef parentClass
    
    List<SdtmClassRefSubclass> subclasses = new ArrayList<>()
    
    SdtmClassRef priorVersion
}
