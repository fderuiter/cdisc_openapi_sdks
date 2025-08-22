package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AboutRef;
import org.openapitools.model.LastupdatedRef;

@Canonical
class AboutLinks {
    
    AboutRef self
    
    LastupdatedRef lastupdated
}
