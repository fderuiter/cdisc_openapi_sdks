package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportCdashClassVariablesRow;
import org.openapitools.model.ExportCdashDomainVariablesRow;

@Canonical
class ExportCdashTable {
    
    List<ExportCdashClassVariablesRow> classVariables = new ArrayList<>()
    
    List<ExportCdashDomainVariablesRow> domainVariables = new ArrayList<>()
}
