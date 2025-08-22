package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSdtmDatasetsRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmDatasetsTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportSdtmDatasetsRow> datasets = new ArrayList<>();
 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<ExportSdtmDatasetsRow> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<ExportSdtmDatasetsRow> datasets) {
    this.datasets = datasets;
  }

  public ExportSdtmDatasetsTable datasets(List<ExportSdtmDatasetsRow> datasets) {
    this.datasets = datasets;
    return this;
  }

  public ExportSdtmDatasetsTable addDatasetsItem(ExportSdtmDatasetsRow datasetsItem) {
    this.datasets.add(datasetsItem);
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExportSdtmDatasetsTable exportSdtmDatasetsTable = (ExportSdtmDatasetsTable) o;
    return Objects.equals(this.datasets, exportSdtmDatasetsTable.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmDatasetsTable {\n");
    
    sb.append("    datasets: ").append(toIndentedString(datasets)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

