package org.openapitools.model;

import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmDatasetLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmDatasetRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmClassRef parentClass;

  @ApiModelProperty(value = "")
  private SdtmDatasetRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmDatasetRef getSelf() {
    return self;
  }

  public void setSelf(SdtmDatasetRef self) {
    this.self = self;
  }

  public SdtmDatasetLinks self(SdtmDatasetRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public SdtmProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(SdtmProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public SdtmDatasetLinks parentProduct(SdtmProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public SdtmClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(SdtmClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public SdtmDatasetLinks parentClass(SdtmClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmDatasetRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmDatasetRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmDatasetLinks priorVersion(SdtmDatasetRef priorVersion) {
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
    SdtmDatasetLinks sdtmDatasetLinks = (SdtmDatasetLinks) o;
    return Objects.equals(this.self, sdtmDatasetLinks.self) &&
        Objects.equals(this.parentProduct, sdtmDatasetLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmDatasetLinks.parentClass) &&
        Objects.equals(this.priorVersion, sdtmDatasetLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmDatasetLinks {\n");
    
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

