package org.openapitools.model;

import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashDomainRef;
import org.openapitools.model.CdashProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashDomainLinks  {
  
  @ApiModelProperty(value = "")
  private CdashDomainRef self;

  @ApiModelProperty(value = "")
  private CdashProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashClassRef parentClass;

  @ApiModelProperty(value = "")
  private CdashDomainRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashDomainRef getSelf() {
    return self;
  }

  public void setSelf(CdashDomainRef self) {
    this.self = self;
  }

  public CdashDomainLinks self(CdashDomainRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashDomainLinks parentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public CdashClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public CdashDomainLinks parentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashDomainRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashDomainRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashDomainLinks priorVersion(CdashDomainRef priorVersion) {
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
    CdashDomainLinks cdashDomainLinks = (CdashDomainLinks) o;
    return Objects.equals(this.self, cdashDomainLinks.self) &&
        Objects.equals(this.parentProduct, cdashDomainLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashDomainLinks.parentClass) &&
        Objects.equals(this.priorVersion, cdashDomainLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashDomainLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
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

