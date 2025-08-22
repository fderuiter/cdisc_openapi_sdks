package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashigDomainField;
import org.openapitools.model.CdashigDomainLinks;

@Canonical
class CdashigDomain {
    
    String ordinal
    
    String name
    
    String label
    
    CdashigDomainLinks links
    
    List<CdashigDomainField> fields = new ArrayList<>()
}
