package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportSendigVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSendigVariablesTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportSendigVariablesRow> variables = new ArrayList<>();
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

  public ExportSendigVariablesTable variables(List<ExportSendigVariablesRow> variables) {
    this.variables = variables;
    return this;
  }

  public ExportSendigVariablesTable addVariablesItem(ExportSendigVariablesRow variablesItem) {
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
    ExportSendigVariablesTable exportSendigVariablesTable = (ExportSendigVariablesTable) o;
    return Objects.equals(this.variables, exportSendigVariablesTable.variables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(variables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSendigVariablesTable {\n");
    
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

