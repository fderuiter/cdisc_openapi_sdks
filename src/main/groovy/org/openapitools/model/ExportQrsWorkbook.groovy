package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ExportQrsGeneral;
import org.openapitools.model.ExportQrsResponses;
import org.openapitools.model.ExportQrsWorkbookItemsRow;

@Canonical
class ExportQrsWorkbook {
    
    ExportQrsGeneral self
    
    List<ExportQrsWorkbookItemsRow> items = new ArrayList<>()
    
    List<ExportQrsResponses> responses = new ArrayList<>()
}
