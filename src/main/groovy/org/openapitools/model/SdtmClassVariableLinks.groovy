package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RootSdtmClassVariableRef;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmClassVariableRef;
import org.openapitools.model.SdtmClassVariableRefQualifies;
import org.openapitools.model.SdtmProductRef;

@Canonical
class SdtmClassVariableLinks {
    
    SdtmClassVariableRef self
    
    SdtmProductRef parentProduct
    
    SdtmClassRef parentClass
    
    List<SdtmClassVariableRefQualifies> qualifiesVariables = new ArrayList<>()
    
    RootSdtmClassVariableRef rootItem
    
    SdtmClassVariableRef priorVersion
}
