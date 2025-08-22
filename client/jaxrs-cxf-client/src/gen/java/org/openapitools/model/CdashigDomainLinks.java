package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigDomainLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigDomainRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigClassRef parentClass;

  @ApiModelProperty(value = "")
  private CdashigDomainRef priorVersion;

  @ApiModelProperty(value = "")
  private List<CdashigScenarioRefElement> scenarios = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigDomainRef getSelf() {
    return self;
  }

  public void setSelf(CdashigDomainRef self) {
    this.self = self;
  }

  public CdashigDomainLinks self(CdashigDomainRef self) {
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

  public CdashigDomainLinks parentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public CdashigClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public CdashigDomainLinks parentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashigDomainRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashigDomainRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashigDomainLinks priorVersion(CdashigDomainRef priorVersion) {
    this.priorVersion = priorVersion;
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

  public CdashigDomainLinks scenarios(List<CdashigScenarioRefElement> scenarios) {
    this.scenarios = scenarios;
    return this;
  }

  public CdashigDomainLinks addScenariosItem(CdashigScenarioRefElement scenariosItem) {
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
    CdashigDomainLinks cdashigDomainLinks = (CdashigDomainLinks) o;
    return Objects.equals(this.self, cdashigDomainLinks.self) &&
        Objects.equals(this.parentProduct, cdashigDomainLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashigDomainLinks.parentClass) &&
        Objects.equals(this.priorVersion, cdashigDomainLinks.priorVersion) &&
        Objects.equals(this.scenarios, cdashigDomainLinks.scenarios);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, priorVersion, scenarios);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigDomainLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
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

