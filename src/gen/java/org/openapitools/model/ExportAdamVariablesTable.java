package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportAdamVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportAdamVariablesTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportAdamVariablesRow> variables = new ArrayList<>();
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

  public ExportAdamVariablesTable variables(List<ExportAdamVariablesRow> variables) {
    this.variables = variables;
    return this;
  }

  public ExportAdamVariablesTable addVariablesItem(ExportAdamVariablesRow variablesItem) {
    this.variables.add(variablesItem);
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
    ExportAdamVariablesTable exportAdamVariablesTable = (ExportAdamVariablesTable) o;
    return Objects.equals(this.variables, exportAdamVariablesTable.variables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(variables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportAdamVariablesTable {\n");
    
    sb.append("    variables: ").append(toIndentedString(variables)).append("\n");
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

