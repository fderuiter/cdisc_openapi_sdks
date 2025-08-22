package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SdtmClassVariableRefElement;
import org.openapitools.model.SdtmClassVariablesRef;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmClassVariablesLinks {
    
    SdtmClassVariablesRef self
    
    SdtmProductRef parentProduct
    
    SdtmClassVariablesRef priorVersion
    
    List<SdtmClassVariableRefElement> classVariables = new ArrayList<>()
}
