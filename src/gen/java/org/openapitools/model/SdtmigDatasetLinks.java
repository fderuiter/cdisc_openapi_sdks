package org.openapitools.model;

import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmigClassRef;
import org.openapitools.model.SdtmigDatasetRef;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigDatasetRef self;

  @ApiModelProperty(value = "")
  private SdtmDatasetRef modelDataset;

  @ApiModelProperty(value = "")
  private SdtmigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmigClassRef parentClass;

  @ApiModelProperty(value = "")
  private SdtmigDatasetRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigDatasetRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigDatasetRef self) {
    this.self = self;
  }

  public SdtmigDatasetLinks self(SdtmigDatasetRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get modelDataset
   * @return modelDataset
  **/
  @JsonProperty("modelDataset")
  public SdtmDatasetRef getModelDataset() {
    return modelDataset;
  }

  public void setModelDataset(SdtmDatasetRef modelDataset) {
    this.modelDataset = modelDataset;
  }

  public SdtmigDatasetLinks modelDataset(SdtmDatasetRef modelDataset) {
    this.modelDataset = modelDataset;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public SdtmigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(SdtmigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public SdtmigDatasetLinks parentProduct(SdtmigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public SdtmigClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(SdtmigClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public SdtmigDatasetLinks parentClass(SdtmigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigDatasetRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigDatasetRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigDatasetLinks priorVersion(SdtmigDatasetRef priorVersion) {
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
    SdtmigDatasetLinks sdtmigDatasetLinks = (SdtmigDatasetLinks) o;
    return Objects.equals(this.self, sdtmigDatasetLinks.self) &&
        Objects.equals(this.modelDataset, sdtmigDatasetLinks.modelDataset) &&
        Objects.equals(this.parentProduct, sdtmigDatasetLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmigDatasetLinks.parentClass) &&
        Objects.equals(this.priorVersion, sdtmigDatasetLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelDataset, parentProduct, parentClass, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    modelDataset: ").append(toIndentedString(modelDataset)).append("\n");
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

