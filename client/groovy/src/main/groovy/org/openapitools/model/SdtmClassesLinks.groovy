package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassRefElement;
import org.openapitools.model.SdtmClassesRef;

@Canonical
class SdtmClassesLinks {
    
    SdtmClassesRef self
    
    SdtmClassesRef priorVersion
    
    List<SdtmClassRefElement> classes = new ArrayList<>()
}
