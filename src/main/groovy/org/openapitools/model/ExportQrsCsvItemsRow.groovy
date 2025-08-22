package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ExportQrsCsvItemsRow {
    
    String qrSMeasureName
    
    String qrSMeasureLabel
    
    String qrSMeasureType
    
    String itemSequence
    
    String testName
    
    String itemText
    
    String testQuoteSCodelistCCode
    
    String testQuoteSTermCCode
    
    String testCodeQuoteSCodelistCCode
    
    String testCodeQuoteSTermCCode
    
    String subcategoryQuoteSCodelistCCode
    
    String subcategoryQuoteSTermCCode
    
    String evaluatorQuoteSCodelistCCode
    
    String evaluatorQuoteSTermCCode
    
    String freeFormResponseQuoteSDatatype
    
    String responseGroup
}
