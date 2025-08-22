package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SendigClassRefElement;
import org.openapitools.model.SendigClassesRef;

@Canonical
class SendigClassesLinks {
    
    SendigClassesRef self
    
    SendigClassesRef priorVersion
    
    List<SendigClassRefElement> classes = new ArrayList<>()
}
