package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SendigClassRef;
import org.openapitools.model.SendigClassRefSubclass;
import org.openapitools.model.SendigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigClassLinks  {
  
  @ApiModelProperty(value = "")
  private SendigClassRef self;

  @ApiModelProperty(value = "")
  private SdtmClassRef modelClass;

  @ApiModelProperty(value = "")
  private SendigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SendigClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<SendigClassRefSubclass> subclasses = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SendigClassRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigClassRef getSelf() {
    return self;
  }

  public void setSelf(SendigClassRef self) {
    this.self = self;
  }

  public SendigClassLinks self(SendigClassRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get modelClass
   * @return modelClass
  **/
  @JsonProperty("modelClass")
  public SdtmClassRef getModelClass() {
    return modelClass;
  }

  public void setModelClass(SdtmClassRef modelClass) {
    this.modelClass = modelClass;
  }

  public SendigClassLinks modelClass(SdtmClassRef modelClass) {
    this.modelClass = modelClass;
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

  public SendigClassLinks parentProduct(SendigProductRef parentProduct) {
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

  public SendigClassLinks parentClass(SendigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get subclasses
   * @return subclasses
  **/
  @JsonProperty("subclasses")
  public List<SendigClassRefSubclass> getSubclasses() {
    return subclasses;
  }

  public void setSubclasses(List<SendigClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
  }

  public SendigClassLinks subclasses(List<SendigClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
    return this;
  }

  public SendigClassLinks addSubclassesItem(SendigClassRefSubclass subclassesItem) {
    this.subclasses.add(subclassesItem);
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SendigClassRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SendigClassRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SendigClassLinks priorVersion(SendigClassRef priorVersion) {
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
    SendigClassLinks sendigClassLinks = (SendigClassLinks) o;
    return Objects.equals(this.self, sendigClassLinks.self) &&
        Objects.equals(this.modelClass, sendigClassLinks.modelClass) &&
        Objects.equals(this.parentProduct, sendigClassLinks.parentProduct) &&
        Objects.equals(this.parentClass, sendigClassLinks.parentClass) &&
        Objects.equals(this.subclasses, sendigClassLinks.subclasses) &&
        Objects.equals(this.priorVersion, sendigClassLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelClass, parentProduct, parentClass, subclasses, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigClassLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    modelClass: ").append(toIndentedString(modelClass)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    subclasses: ").append(toIndentedString(subclasses)).append("\n");
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

