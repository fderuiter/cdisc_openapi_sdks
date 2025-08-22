package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmigClassRef;
import org.openapitools.model.SdtmigClassRefSubclass;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigClassLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigClassRef self;

  @ApiModelProperty(value = "")
  private SdtmClassRef modelClass;

  @ApiModelProperty(value = "")
  private SdtmigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmigClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<SdtmigClassRefSubclass> subclasses = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SdtmigClassRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigClassRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigClassRef self) {
    this.self = self;
  }

  public SdtmigClassLinks self(SdtmigClassRef self) {
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

  public SdtmigClassLinks modelClass(SdtmClassRef modelClass) {
    this.modelClass = modelClass;
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

  public SdtmigClassLinks parentProduct(SdtmigProductRef parentProduct) {
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

  public SdtmigClassLinks parentClass(SdtmigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get subclasses
   * @return subclasses
  **/
  @JsonProperty("subclasses")
  public List<SdtmigClassRefSubclass> getSubclasses() {
    return subclasses;
  }

  public void setSubclasses(List<SdtmigClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
  }

  public SdtmigClassLinks subclasses(List<SdtmigClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
    return this;
  }

  public SdtmigClassLinks addSubclassesItem(SdtmigClassRefSubclass subclassesItem) {
    this.subclasses.add(subclassesItem);
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigClassRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigClassRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigClassLinks priorVersion(SdtmigClassRef priorVersion) {
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
    SdtmigClassLinks sdtmigClassLinks = (SdtmigClassLinks) o;
    return Objects.equals(this.self, sdtmigClassLinks.self) &&
        Objects.equals(this.modelClass, sdtmigClassLinks.modelClass) &&
        Objects.equals(this.parentProduct, sdtmigClassLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmigClassLinks.parentClass) &&
        Objects.equals(this.subclasses, sdtmigClassLinks.subclasses) &&
        Objects.equals(this.priorVersion, sdtmigClassLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelClass, parentProduct, parentClass, subclasses, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigClassLinks {\n");
    
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

