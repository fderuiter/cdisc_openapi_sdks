package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportSendigDatasetsRow;
import org.openapitools.model.ExportSendigVariablesRow;

@Canonical
class ExportSendigWorkbook {
    
    List<ExportSendigVariablesRow> variables = new ArrayList<>()
    
    List<ExportSendigDatasetsRow> datasets = new ArrayList<>()
}
