package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSdtmigDatasetsRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmigDatasetsTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportSdtmigDatasetsRow> datasets = new ArrayList<>();
 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<ExportSdtmigDatasetsRow> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<ExportSdtmigDatasetsRow> datasets) {
    this.datasets = datasets;
  }

  public ExportSdtmigDatasetsTable datasets(List<ExportSdtmigDatasetsRow> datasets) {
    this.datasets = datasets;
    return this;
  }

  public ExportSdtmigDatasetsTable addDatasetsItem(ExportSdtmigDatasetsRow datasetsItem) {
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
    ExportSdtmigDatasetsTable exportSdtmigDatasetsTable = (ExportSdtmigDatasetsTable) o;
    return Objects.equals(this.datasets, exportSdtmigDatasetsTable.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmigDatasetsTable {\n");
    
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

