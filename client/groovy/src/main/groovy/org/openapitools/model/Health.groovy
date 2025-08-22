package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class Health {
    
    Boolean healthy
    
    Boolean ldapAuthenticationHealthy
    
    Boolean ldapAuthorizationHealthy
    
    Boolean databaseHealthy
    
    Boolean esHealthy
}
