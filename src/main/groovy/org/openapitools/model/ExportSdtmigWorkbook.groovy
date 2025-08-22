package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportSdtmigDatasetsRow;
import org.openapitools.model.ExportSdtmigVariablesRow;

@Canonical
class ExportSdtmigWorkbook {
    
    List<ExportSdtmigVariablesRow> variables = new ArrayList<>()
    
    List<ExportSdtmigDatasetsRow> datasets = new ArrayList<>()
}
