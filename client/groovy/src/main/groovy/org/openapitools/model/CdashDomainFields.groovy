package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CdashDomainFieldsLinks;

@Canonical
class CdashDomainFields {
    
    String ordinal
    
    String name
    
    String label
    
    CdashDomainFieldsLinks links
}
