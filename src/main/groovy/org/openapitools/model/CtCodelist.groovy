package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CtCodelistLinks;
import org.openapitools.model.CtPackageTerm;

@Canonical
class CtCodelist {
    
    String conceptId
    
    String extensible
    
    String name
    
    String submissionValue
    
    String definition
    
    String preferredTerm
    
    List<String> synonyms = new ArrayList<>()
    
    CtCodelistLinks links
    
    List<CtPackageTerm> terms = new ArrayList<>()
}
