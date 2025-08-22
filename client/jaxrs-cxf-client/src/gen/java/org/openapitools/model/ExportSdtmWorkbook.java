package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSdtmClassVariablesRow;
import org.openapitools.model.ExportSdtmDatasetVariablesRow;
import org.openapitools.model.ExportSdtmDatasetsRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmWorkbook  {
  
  @ApiModelProperty(value = "")
  private List<ExportSdtmClassVariablesRow> classVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportSdtmDatasetVariablesRow> datasetVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportSdtmDatasetsRow> datasets = new ArrayList<>();
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

  public ExportSdtmWorkbook classVariables(List<ExportSdtmClassVariablesRow> classVariables) {
    this.classVariables = classVariables;
    return this;
  }

  public ExportSdtmWorkbook addClassVariablesItem(ExportSdtmClassVariablesRow classVariablesItem) {
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

  public ExportSdtmWorkbook datasetVariables(List<ExportSdtmDatasetVariablesRow> datasetVariables) {
    this.datasetVariables = datasetVariables;
    return this;
  }

  public ExportSdtmWorkbook addDatasetVariablesItem(ExportSdtmDatasetVariablesRow datasetVariablesItem) {
    this.datasetVariables.add(datasetVariablesItem);
    return this;
  }

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

  public ExportSdtmWorkbook datasets(List<ExportSdtmDatasetsRow> datasets) {
    this.datasets = datasets;
    return this;
  }

  public ExportSdtmWorkbook addDatasetsItem(ExportSdtmDatasetsRow datasetsItem) {
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
    ExportSdtmWorkbook exportSdtmWorkbook = (ExportSdtmWorkbook) o;
    return Objects.equals(this.classVariables, exportSdtmWorkbook.classVariables) &&
        Objects.equals(this.datasetVariables, exportSdtmWorkbook.datasetVariables) &&
        Objects.equals(this.datasets, exportSdtmWorkbook.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(classVariables, datasetVariables, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmWorkbook {\n");
    
    sb.append("    classVariables: ").append(toIndentedString(classVariables)).append("\n");
    sb.append("    datasetVariables: ").append(toIndentedString(datasetVariables)).append("\n");
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

