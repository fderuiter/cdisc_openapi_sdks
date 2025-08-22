package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigClassRefSubclass;
import org.openapitools.model.CdashigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigClassLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigClassRef self;

  @ApiModelProperty(value = "")
  private CdashClassRef modelClass;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<CdashigClassRefSubclass> subclasses = new ArrayList<>();

  @ApiModelProperty(value = "")
  private CdashigClassRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigClassRef getSelf() {
    return self;
  }

  public void setSelf(CdashigClassRef self) {
    this.self = self;
  }

  public CdashigClassLinks self(CdashigClassRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get modelClass
   * @return modelClass
  **/
  @JsonProperty("modelClass")
  public CdashClassRef getModelClass() {
    return modelClass;
  }

  public void setModelClass(CdashClassRef modelClass) {
    this.modelClass = modelClass;
  }

  public CdashigClassLinks modelClass(CdashClassRef modelClass) {
    this.modelClass = modelClass;
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

  public CdashigClassLinks parentProduct(CdashigProductRef parentProduct) {
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

  public CdashigClassLinks parentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get subclasses
   * @return subclasses
  **/
  @JsonProperty("subclasses")
  public List<CdashigClassRefSubclass> getSubclasses() {
    return subclasses;
  }

  public void setSubclasses(List<CdashigClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
  }

  public CdashigClassLinks subclasses(List<CdashigClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
    return this;
  }

  public CdashigClassLinks addSubclassesItem(CdashigClassRefSubclass subclassesItem) {
    this.subclasses.add(subclassesItem);
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashigClassRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashigClassRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashigClassLinks priorVersion(CdashigClassRef priorVersion) {
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
    CdashigClassLinks cdashigClassLinks = (CdashigClassLinks) o;
    return Objects.equals(this.self, cdashigClassLinks.self) &&
        Objects.equals(this.modelClass, cdashigClassLinks.modelClass) &&
        Objects.equals(this.parentProduct, cdashigClassLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashigClassLinks.parentClass) &&
        Objects.equals(this.subclasses, cdashigClassLinks.subclasses) &&
        Objects.equals(this.priorVersion, cdashigClassLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelClass, parentProduct, parentClass, subclasses, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigClassLinks {\n");
    
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

