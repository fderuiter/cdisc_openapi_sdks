package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportCtTerm;

@Canonical
class ExportCtCodelist {
    
    String code
    
    String codelistCode
    
    String codelistExtensibleYesNo
    
    String codelistName
    
    String cdISCSubmissionValue
    
    List<String> cdISCSynonymS = new ArrayList<>()
    
    String cdISCDefinition
    
    String ncIPreferredTerm
    
    String standardAndDate
    
    List<ExportCtTerm>  = new ArrayList<>()
}
