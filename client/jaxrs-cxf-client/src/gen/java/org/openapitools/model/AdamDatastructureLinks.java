package org.openapitools.model;

import org.openapitools.model.AdamDatastructureRef;
import org.openapitools.model.AdamProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamDatastructureLinks  {
  
  @ApiModelProperty(value = "")
  private AdamDatastructureRef self;

  @ApiModelProperty(value = "")
  private AdamProductRef parentProduct;

  @ApiModelProperty(value = "")
  private AdamDatastructureRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamDatastructureRef getSelf() {
    return self;
  }

  public void setSelf(AdamDatastructureRef self) {
    this.self = self;
  }

  public AdamDatastructureLinks self(AdamDatastructureRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public AdamProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public AdamDatastructureLinks parentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamDatastructureRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamDatastructureRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamDatastructureLinks priorVersion(AdamDatastructureRef priorVersion) {
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
    AdamDatastructureLinks adamDatastructureLinks = (AdamDatastructureLinks) o;
    return Objects.equals(this.self, adamDatastructureLinks.self) &&
        Objects.equals(this.parentProduct, adamDatastructureLinks.parentProduct) &&
        Objects.equals(this.priorVersion, adamDatastructureLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamDatastructureLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
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

