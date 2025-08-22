package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CdashDomainField;
import org.openapitools.model.CdashDomainLinks;

@Canonical
class CdashDomain {
    
    String ordinal
    
    String name
    
    String label
    
    CdashDomainLinks links
    
    List<CdashDomainField> fields = new ArrayList<>()
}
