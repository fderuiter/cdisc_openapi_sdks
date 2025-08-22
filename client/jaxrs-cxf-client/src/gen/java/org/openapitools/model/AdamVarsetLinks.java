package org.openapitools.model;

import org.openapitools.model.AdamDatastructureRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVarsetRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamVarsetLinks  {
  
  @ApiModelProperty(value = "")
  private AdamVarsetRef self;

  @ApiModelProperty(value = "")
  private AdamProductRef parentProduct;

  @ApiModelProperty(value = "")
  private AdamDatastructureRef parentDatastructure;

  @ApiModelProperty(value = "")
  private AdamVarsetRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamVarsetRef getSelf() {
    return self;
  }

  public void setSelf(AdamVarsetRef self) {
    this.self = self;
  }

  public AdamVarsetLinks self(AdamVarsetRef self) {
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

  public AdamVarsetLinks parentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentDatastructure
   * @return parentDatastructure
  **/
  @JsonProperty("parentDatastructure")
  public AdamDatastructureRef getParentDatastructure() {
    return parentDatastructure;
  }

  public void setParentDatastructure(AdamDatastructureRef parentDatastructure) {
    this.parentDatastructure = parentDatastructure;
  }

  public AdamVarsetLinks parentDatastructure(AdamDatastructureRef parentDatastructure) {
    this.parentDatastructure = parentDatastructure;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamVarsetRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamVarsetRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamVarsetLinks priorVersion(AdamVarsetRef priorVersion) {
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
    AdamVarsetLinks adamVarsetLinks = (AdamVarsetLinks) o;
    return Objects.equals(this.self, adamVarsetLinks.self) &&
        Objects.equals(this.parentProduct, adamVarsetLinks.parentProduct) &&
        Objects.equals(this.parentDatastructure, adamVarsetLinks.parentDatastructure) &&
        Objects.equals(this.priorVersion, adamVarsetLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentDatastructure, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamVarsetLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentDatastructure: ").append(toIndentedString(parentDatastructure)).append("\n");
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

