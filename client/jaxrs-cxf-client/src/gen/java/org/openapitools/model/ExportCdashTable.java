package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportCdashClassVariablesRow;
import org.openapitools.model.ExportCdashDomainVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCdashTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportCdashClassVariablesRow> classVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportCdashDomainVariablesRow> domainVariables = new ArrayList<>();
 /**
   * Get classVariables
   * @return classVariables
  **/
  @JsonProperty("class-variables")
  public List<ExportCdashClassVariablesRow> getClassVariables() {
    return classVariables;
  }

  public void setClassVariables(List<ExportCdashClassVariablesRow> classVariables) {
    this.classVariables = classVariables;
  }

  public ExportCdashTable classVariables(List<ExportCdashClassVariablesRow> classVariables) {
    this.classVariables = classVariables;
    return this;
  }

  public ExportCdashTable addClassVariablesItem(ExportCdashClassVariablesRow classVariablesItem) {
    this.classVariables.add(classVariablesItem);
    return this;
  }

 /**
   * Get domainVariables
   * @return domainVariables
  **/
  @JsonProperty("domain-variables")
  public List<ExportCdashDomainVariablesRow> getDomainVariables() {
    return domainVariables;
  }

  public void setDomainVariables(List<ExportCdashDomainVariablesRow> domainVariables) {
    this.domainVariables = domainVariables;
  }

  public ExportCdashTable domainVariables(List<ExportCdashDomainVariablesRow> domainVariables) {
    this.domainVariables = domainVariables;
    return this;
  }

  public ExportCdashTable addDomainVariablesItem(ExportCdashDomainVariablesRow domainVariablesItem) {
    this.domainVariables.add(domainVariablesItem);
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
    ExportCdashTable exportCdashTable = (ExportCdashTable) o;
    return Objects.equals(this.classVariables, exportCdashTable.classVariables) &&
        Objects.equals(this.domainVariables, exportCdashTable.domainVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(classVariables, domainVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCdashTable {\n");
    
    sb.append("    classVariables: ").append(toIndentedString(classVariables)).append("\n");
    sb.append("    domainVariables: ").append(toIndentedString(domainVariables)).append("\n");
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

