package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportCdashigDomainVariablesRow;
import org.openapitools.model.ExportCdashigScenarioVariablesRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCdashigTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportCdashigDomainVariablesRow> domainVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportCdashigScenarioVariablesRow> scenarioVariables = new ArrayList<>();
 /**
   * Get domainVariables
   * @return domainVariables
  **/
  @JsonProperty("domain-variables")
  public List<ExportCdashigDomainVariablesRow> getDomainVariables() {
    return domainVariables;
  }

  public void setDomainVariables(List<ExportCdashigDomainVariablesRow> domainVariables) {
    this.domainVariables = domainVariables;
  }

  public ExportCdashigTable domainVariables(List<ExportCdashigDomainVariablesRow> domainVariables) {
    this.domainVariables = domainVariables;
    return this;
  }

  public ExportCdashigTable addDomainVariablesItem(ExportCdashigDomainVariablesRow domainVariablesItem) {
    this.domainVariables.add(domainVariablesItem);
    return this;
  }

 /**
   * Get scenarioVariables
   * @return scenarioVariables
  **/
  @JsonProperty("scenario-variables")
  public List<ExportCdashigScenarioVariablesRow> getScenarioVariables() {
    return scenarioVariables;
  }

  public void setScenarioVariables(List<ExportCdashigScenarioVariablesRow> scenarioVariables) {
    this.scenarioVariables = scenarioVariables;
  }

  public ExportCdashigTable scenarioVariables(List<ExportCdashigScenarioVariablesRow> scenarioVariables) {
    this.scenarioVariables = scenarioVariables;
    return this;
  }

  public ExportCdashigTable addScenarioVariablesItem(ExportCdashigScenarioVariablesRow scenarioVariablesItem) {
    this.scenarioVariables.add(scenarioVariablesItem);
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
    ExportCdashigTable exportCdashigTable = (ExportCdashigTable) o;
    return Objects.equals(this.domainVariables, exportCdashigTable.domainVariables) &&
        Objects.equals(this.scenarioVariables, exportCdashigTable.scenarioVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(domainVariables, scenarioVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCdashigTable {\n");
    
    sb.append("    domainVariables: ").append(toIndentedString(domainVariables)).append("\n");
    sb.append("    scenarioVariables: ").append(toIndentedString(scenarioVariables)).append("\n");
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

