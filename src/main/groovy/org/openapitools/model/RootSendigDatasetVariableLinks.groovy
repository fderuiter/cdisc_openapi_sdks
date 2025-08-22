package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.RootSendigDatasetVariableRef;
import org.openapitools.model.SendigDatasetVariableRefVersion;

@Canonical
class RootSendigDatasetVariableLinks {
    
    RootSendigDatasetVariableRef self
    
    List<SendigDatasetVariableRefVersion> versions = new ArrayList<>()
}
