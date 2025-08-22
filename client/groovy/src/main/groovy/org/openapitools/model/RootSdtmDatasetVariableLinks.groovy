package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RootSdtmDatasetVariableRef;
import org.openapitools.model.SdtmDatasetVariableRefVersion;

@Canonical
class RootSdtmDatasetVariableLinks {
    
    RootSdtmDatasetVariableRef self
    
    List<SdtmDatasetVariableRefVersion> versions = new ArrayList<>()
}
