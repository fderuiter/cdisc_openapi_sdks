package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportCdashigDomainVariablesRow;
import org.openapitools.model.ExportCdashigScenarioVariablesRow;

@Canonical
class ExportCdashigTable {
    
    List<ExportCdashigDomainVariablesRow> domainVariables = new ArrayList<>()
    
    List<ExportCdashigScenarioVariablesRow> scenarioVariables = new ArrayList<>()
}
