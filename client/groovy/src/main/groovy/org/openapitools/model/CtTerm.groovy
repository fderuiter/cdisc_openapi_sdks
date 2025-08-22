package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtTermLinks;

@Canonical
class CtTerm {
    
    String conceptId
    
    String submissionValue
    
    String definition
    
    String preferredTerm
    
    List<String> synonyms = new ArrayList<>()
    
    CtTermLinks links
}
