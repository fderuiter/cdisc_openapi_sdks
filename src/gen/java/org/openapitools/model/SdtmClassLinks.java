package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmClassRefSubclass;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmClassRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<SdtmClassRefSubclass> subclasses = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SdtmClassRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmClassRef getSelf() {
    return self;
  }

  public void setSelf(SdtmClassRef self) {
    this.self = self;
  }

  public SdtmClassLinks self(SdtmClassRef self) {
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

  public SdtmClassLinks parentProduct(SdtmProductRef parentProduct) {
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

  public SdtmClassLinks parentClass(SdtmClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get subclasses
   * @return subclasses
  **/
  @JsonProperty("subclasses")
  public List<SdtmClassRefSubclass> getSubclasses() {
    return subclasses;
  }

  public void setSubclasses(List<SdtmClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
  }

  public SdtmClassLinks subclasses(List<SdtmClassRefSubclass> subclasses) {
    this.subclasses = subclasses;
    return this;
  }

  public SdtmClassLinks addSubclassesItem(SdtmClassRefSubclass subclassesItem) {
    this.subclasses.add(subclassesItem);
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmClassRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmClassRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmClassLinks priorVersion(SdtmClassRef priorVersion) {
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
    SdtmClassLinks sdtmClassLinks = (SdtmClassLinks) o;
    return Objects.equals(this.self, sdtmClassLinks.self) &&
        Objects.equals(this.parentProduct, sdtmClassLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmClassLinks.parentClass) &&
        Objects.equals(this.subclasses, sdtmClassLinks.subclasses) &&
        Objects.equals(this.priorVersion, sdtmClassLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, subclasses, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

