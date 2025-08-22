package org.openapitools.model;

import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SendigClassRef;
import org.openapitools.model.SendigDatasetRef;
import org.openapitools.model.SendigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigDatasetLinks  {
  
  @ApiModelProperty(value = "")
  private SendigDatasetRef self;

  @ApiModelProperty(value = "")
  private SdtmDatasetRef modelDataset;

  @ApiModelProperty(value = "")
  private SendigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SendigClassRef parentClass;

  @ApiModelProperty(value = "")
  private SendigDatasetRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigDatasetRef getSelf() {
    return self;
  }

  public void setSelf(SendigDatasetRef self) {
    this.self = self;
  }

  public SendigDatasetLinks self(SendigDatasetRef self) {
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

  public SendigDatasetLinks modelDataset(SdtmDatasetRef modelDataset) {
    this.modelDataset = modelDataset;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public SendigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(SendigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public SendigDatasetLinks parentProduct(SendigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public SendigClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(SendigClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public SendigDatasetLinks parentClass(SendigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SendigDatasetRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SendigDatasetRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SendigDatasetLinks priorVersion(SendigDatasetRef priorVersion) {
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
    SendigDatasetLinks sendigDatasetLinks = (SendigDatasetLinks) o;
    return Objects.equals(this.self, sendigDatasetLinks.self) &&
        Objects.equals(this.modelDataset, sendigDatasetLinks.modelDataset) &&
        Objects.equals(this.parentProduct, sendigDatasetLinks.parentProduct) &&
        Objects.equals(this.parentClass, sendigDatasetLinks.parentClass) &&
        Objects.equals(this.priorVersion, sendigDatasetLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelDataset, parentProduct, parentClass, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigDatasetLinks {\n");
    
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

