package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ExportQrsGeneral {
    
    String name
    
    String label
    
    String effectiveDate
    
    String description
    
    String type
    
    String categoryQuoteSCodelistCCode
    
    String categoryQuoteSTermCCode
}
