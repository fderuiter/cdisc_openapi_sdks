package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmigClassRefElement;
import org.openapitools.model.SdtmigClassesRef;

@Canonical
class SdtmigClassesLinks {
    
    SdtmigClassesRef self
    
    SdtmigClassesRef priorVersion
    
    List<SdtmigClassRefElement> classes = new ArrayList<>()
}
