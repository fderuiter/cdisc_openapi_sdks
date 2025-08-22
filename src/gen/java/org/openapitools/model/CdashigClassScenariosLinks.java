package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassScenariosRef;
import org.openapitools.model.CdashigScenarioRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigClassScenariosLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigClassScenariosRef self;

  @ApiModelProperty(value = "")
  private List<CdashigScenarioRefElement> scenarios = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigClassScenariosRef getSelf() {
    return self;
  }

  public void setSelf(CdashigClassScenariosRef self) {
    this.self = self;
  }

  public CdashigClassScenariosLinks self(CdashigClassScenariosRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get scenarios
   * @return scenarios
  **/
  @JsonProperty("scenarios")
  public List<CdashigScenarioRefElement> getScenarios() {
    return scenarios;
  }

  public void setScenarios(List<CdashigScenarioRefElement> scenarios) {
    this.scenarios = scenarios;
  }

  public CdashigClassScenariosLinks scenarios(List<CdashigScenarioRefElement> scenarios) {
    this.scenarios = scenarios;
    return this;
  }

  public CdashigClassScenariosLinks addScenariosItem(CdashigScenarioRefElement scenariosItem) {
    this.scenarios.add(scenariosItem);
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
    CdashigClassScenariosLinks cdashigClassScenariosLinks = (CdashigClassScenariosLinks) o;
    return Objects.equals(this.self, cdashigClassScenariosLinks.self) &&
        Objects.equals(this.scenarios, cdashigClassScenariosLinks.scenarios);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, scenarios);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigClassScenariosLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    scenarios: ").append(toIndentedString(scenarios)).append("\n");
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

