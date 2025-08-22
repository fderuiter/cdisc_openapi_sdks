package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportSdtmClassVariablesRow;
import org.openapitools.model.ExportSdtmDatasetVariablesRow;

@Canonical
class ExportSdtmVariablesTable {
    
    List<ExportSdtmClassVariablesRow> classVariables = new ArrayList<>()
    
    List<ExportSdtmDatasetVariablesRow> datasetVariables = new ArrayList<>()
}
