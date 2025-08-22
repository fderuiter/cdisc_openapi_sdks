package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SendigClassRef;
import org.openapitools.model.SendigClassRefSubclass;
import org.openapitools.model.SendigProductRef;

@Canonical
class SendigClassLinks {
    
    SendigClassRef self
    
    SdtmClassRef modelClass
    
    SendigProductRef parentProduct
    
    SendigClassRef parentClass
    
    List<SendigClassRefSubclass> subclasses = new ArrayList<>()
    
    SendigClassRef priorVersion
}
