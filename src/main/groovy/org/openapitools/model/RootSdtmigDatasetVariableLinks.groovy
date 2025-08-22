package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RootSdtmigDatasetVariableRef;
import org.openapitools.model.SdtmigDatasetVariableRefVersion;

@Canonical
class RootSdtmigDatasetVariableLinks {
    
    RootSdtmigDatasetVariableRef self
    
    List<SdtmigDatasetVariableRefVersion> versions = new ArrayList<>()
}
