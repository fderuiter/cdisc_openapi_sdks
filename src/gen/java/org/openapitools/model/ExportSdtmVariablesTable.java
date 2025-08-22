package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSdtmClassVariablesRow;
import org.openapitools.model.ExportSdtmDatasetVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmVariablesTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportSdtmClassVariablesRow> classVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportSdtmDatasetVariablesRow> datasetVariables = new ArrayList<>();
 /**
   * Get classVariables
   * @return classVariables
  **/
  @JsonProperty("class-variables")
  public List<ExportSdtmClassVariablesRow> getClassVariables() {
    return classVariables;
  }

  public void setClassVariables(List<ExportSdtmClassVariablesRow> classVariables) {
    this.classVariables = classVariables;
  }

  public ExportSdtmVariablesTable classVariables(List<ExportSdtmClassVariablesRow> classVariables) {
    this.classVariables = classVariables;
    return this;
  }

  public ExportSdtmVariablesTable addClassVariablesItem(ExportSdtmClassVariablesRow classVariablesItem) {
    this.classVariables.add(classVariablesItem);
    return this;
  }

 /**
   * Get datasetVariables
   * @return datasetVariables
  **/
  @JsonProperty("dataset-variables")
  public List<ExportSdtmDatasetVariablesRow> getDatasetVariables() {
    return datasetVariables;
  }

  public void setDatasetVariables(List<ExportSdtmDatasetVariablesRow> datasetVariables) {
    this.datasetVariables = datasetVariables;
  }

  public ExportSdtmVariablesTable datasetVariables(List<ExportSdtmDatasetVariablesRow> datasetVariables) {
    this.datasetVariables = datasetVariables;
    return this;
  }

  public ExportSdtmVariablesTable addDatasetVariablesItem(ExportSdtmDatasetVariablesRow datasetVariablesItem) {
    this.datasetVariables.add(datasetVariablesItem);
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
    ExportSdtmVariablesTable exportSdtmVariablesTable = (ExportSdtmVariablesTable) o;
    return Objects.equals(this.classVariables, exportSdtmVariablesTable.classVariables) &&
        Objects.equals(this.datasetVariables, exportSdtmVariablesTable.datasetVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(classVariables, datasetVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmVariablesTable {\n");
    
    sb.append("    classVariables: ").append(toIndentedString(classVariables)).append("\n");
    sb.append("    datasetVariables: ").append(toIndentedString(datasetVariables)).append("\n");
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

