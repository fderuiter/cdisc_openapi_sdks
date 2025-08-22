package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class CtPackageTerm {
    
    String conceptId
    
    String submissionValue
    
    String definition
    
    String preferredTerm
    
    List<String> synonyms = new ArrayList<>()
}
