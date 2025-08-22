package org.openapitools.model;

import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigScenarioLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigScenarioRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigClassRef parentClass;

  @ApiModelProperty(value = "")
  private CdashigDomainRef parentDomain;

  @ApiModelProperty(value = "")
  private CdashigScenarioRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigScenarioRef getSelf() {
    return self;
  }

  public void setSelf(CdashigScenarioRef self) {
    this.self = self;
  }

  public CdashigScenarioLinks self(CdashigScenarioRef self) {
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

  public CdashigScenarioLinks parentProduct(CdashigProductRef parentProduct) {
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

  public CdashigScenarioLinks parentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get parentDomain
   * @return parentDomain
  **/
  @JsonProperty("parentDomain")
  public CdashigDomainRef getParentDomain() {
    return parentDomain;
  }

  public void setParentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
  }

  public CdashigScenarioLinks parentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashigScenarioRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashigScenarioRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashigScenarioLinks priorVersion(CdashigScenarioRef priorVersion) {
    this.priorVersion = priorVersion;
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
    CdashigScenarioLinks cdashigScenarioLinks = (CdashigScenarioLinks) o;
    return Objects.equals(this.self, cdashigScenarioLinks.self) &&
        Objects.equals(this.parentProduct, cdashigScenarioLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashigScenarioLinks.parentClass) &&
        Objects.equals(this.parentDomain, cdashigScenarioLinks.parentDomain) &&
        Objects.equals(this.priorVersion, cdashigScenarioLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, parentDomain, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigScenarioLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    parentDomain: ").append(toIndentedString(parentDomain)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
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

