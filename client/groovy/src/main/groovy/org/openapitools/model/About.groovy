package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AboutLinks;

@Canonical
class About {
    
    AboutLinks links
    
    String releaseNotes
    
    String apiDocumentation
}
