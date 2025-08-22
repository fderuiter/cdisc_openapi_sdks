package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSendigDatasetsRow;
import org.openapitools.model.ExportSendigVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSendigWorkbook  {
  
  @ApiModelProperty(value = "")
  private List<ExportSendigVariablesRow> variables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportSendigDatasetsRow> datasets = new ArrayList<>();
 /**
   * Get variables
   * @return variables
  **/
  @JsonProperty("variables")
  public List<ExportSendigVariablesRow> getVariables() {
    return variables;
  }

  public void setVariables(List<ExportSendigVariablesRow> variables) {
    this.variables = variables;
  }

  public ExportSendigWorkbook variables(List<ExportSendigVariablesRow> variables) {
    this.variables = variables;
    return this;
  }

  public ExportSendigWorkbook addVariablesItem(ExportSendigVariablesRow variablesItem) {
    this.variables.add(variablesItem);
    return this;
  }

 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<ExportSendigDatasetsRow> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<ExportSendigDatasetsRow> datasets) {
    this.datasets = datasets;
  }

  public ExportSendigWorkbook datasets(List<ExportSendigDatasetsRow> datasets) {
    this.datasets = datasets;
    return this;
  }

  public ExportSendigWorkbook addDatasetsItem(ExportSendigDatasetsRow datasetsItem) {
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
    ExportSendigWorkbook exportSendigWorkbook = (ExportSendigWorkbook) o;
    return Objects.equals(this.variables, exportSendigWorkbook.variables) &&
        Objects.equals(this.datasets, exportSendigWorkbook.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(variables, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSendigWorkbook {\n");
    
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

