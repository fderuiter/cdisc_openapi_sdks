package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigProductScenariosRef;
import org.openapitools.model.CdashigScenarioRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigProductScenariosLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigProductScenariosRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<CdashigScenarioRefElement> scenarios = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigProductScenariosRef getSelf() {
    return self;
  }

  public void setSelf(CdashigProductScenariosRef self) {
    this.self = self;
  }

  public CdashigProductScenariosLinks self(CdashigProductScenariosRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashigProductScenariosLinks parentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
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

  public CdashigProductScenariosLinks scenarios(List<CdashigScenarioRefElement> scenarios) {
    this.scenarios = scenarios;
    return this;
  }

  public CdashigProductScenariosLinks addScenariosItem(CdashigScenarioRefElement scenariosItem) {
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
    CdashigProductScenariosLinks cdashigProductScenariosLinks = (CdashigProductScenariosLinks) o;
    return Objects.equals(this.self, cdashigProductScenariosLinks.self) &&
        Objects.equals(this.parentProduct, cdashigProductScenariosLinks.parentProduct) &&
        Objects.equals(this.scenarios, cdashigProductScenariosLinks.scenarios);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, scenarios);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigProductScenariosLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
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

