package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSdtmigDatasetsRow;
import org.openapitools.model.ExportSdtmigVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmigWorkbook  {
  
  @ApiModelProperty(value = "")
  private List<ExportSdtmigVariablesRow> variables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportSdtmigDatasetsRow> datasets = new ArrayList<>();
 /**
   * Get variables
   * @return variables
  **/
  @JsonProperty("variables")
  public List<ExportSdtmigVariablesRow> getVariables() {
    return variables;
  }

  public void setVariables(List<ExportSdtmigVariablesRow> variables) {
    this.variables = variables;
  }

  public ExportSdtmigWorkbook variables(List<ExportSdtmigVariablesRow> variables) {
    this.variables = variables;
    return this;
  }

  public ExportSdtmigWorkbook addVariablesItem(ExportSdtmigVariablesRow variablesItem) {
    this.variables.add(variablesItem);
    return this;
  }

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

  public ExportSdtmigWorkbook datasets(List<ExportSdtmigDatasetsRow> datasets) {
    this.datasets = datasets;
    return this;
  }

  public ExportSdtmigWorkbook addDatasetsItem(ExportSdtmigDatasetsRow datasetsItem) {
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
    ExportSdtmigWorkbook exportSdtmigWorkbook = (ExportSdtmigWorkbook) o;
    return Objects.equals(this.variables, exportSdtmigWorkbook.variables) &&
        Objects.equals(this.datasets, exportSdtmigWorkbook.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(variables, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmigWorkbook {\n");
    
    sb.append("    variables: ").append(toIndentedString(variables)).append("\n");
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

