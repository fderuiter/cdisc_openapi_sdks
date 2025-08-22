package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportAdamDatastructuresRow;
import org.openapitools.model.ExportAdamVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportAdamWorkbook  {
  
  @ApiModelProperty(value = "")
  private List<ExportAdamVariablesRow> variables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportAdamDatastructuresRow> datastructures = new ArrayList<>();
 /**
   * Get variables
   * @return variables
  **/
  @JsonProperty("variables")
  public List<ExportAdamVariablesRow> getVariables() {
    return variables;
  }

  public void setVariables(List<ExportAdamVariablesRow> variables) {
    this.variables = variables;
  }

  public ExportAdamWorkbook variables(List<ExportAdamVariablesRow> variables) {
    this.variables = variables;
    return this;
  }

  public ExportAdamWorkbook addVariablesItem(ExportAdamVariablesRow variablesItem) {
    this.variables.add(variablesItem);
    return this;
  }

 /**
   * Get datastructures
   * @return datastructures
  **/
  @JsonProperty("datastructures")
  public List<ExportAdamDatastructuresRow> getDatastructures() {
    return datastructures;
  }

  public void setDatastructures(List<ExportAdamDatastructuresRow> datastructures) {
    this.datastructures = datastructures;
  }

  public ExportAdamWorkbook datastructures(List<ExportAdamDatastructuresRow> datastructures) {
    this.datastructures = datastructures;
    return this;
  }

  public ExportAdamWorkbook addDatastructuresItem(ExportAdamDatastructuresRow datastructuresItem) {
    this.datastructures.add(datastructuresItem);
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
    ExportAdamWorkbook exportAdamWorkbook = (ExportAdamWorkbook) o;
    return Objects.equals(this.variables, exportAdamWorkbook.variables) &&
        Objects.equals(this.datastructures, exportAdamWorkbook.datastructures);
  }

  @Override
  public int hashCode() {
    return Objects.hash(variables, datastructures);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportAdamWorkbook {\n");
    
    sb.append("    variables: ").append(toIndentedString(variables)).append("\n");
    sb.append("    datastructures: ").append(toIndentedString(datastructures)).append("\n");
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

