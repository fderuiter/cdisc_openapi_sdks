package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.QrsItemLinks;

@Canonical
class QrsItem {
    
    String ordinal
    
    String label
    
    String questionText
    
    QrsItemLinks links
}
