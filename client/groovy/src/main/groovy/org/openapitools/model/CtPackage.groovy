package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtPackageCodelists;
import org.openapitools.model.CtPackageLinks;

@Canonical
class CtPackage {
    
    String name
    
    String label
    
    String description
    
    String source
    
    String effectiveDate
    
    String registrationStatus
    
    String version
    
    CtPackageLinks links
    
    List<CtPackageCodelists> codelists = new ArrayList<>()
}
