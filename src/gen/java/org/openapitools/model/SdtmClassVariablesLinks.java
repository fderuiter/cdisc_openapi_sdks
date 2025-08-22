package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassVariableRefElement;
import org.openapitools.model.SdtmClassVariablesRef;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassVariablesLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmClassVariablesRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmClassVariablesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmClassVariableRefElement> classVariables = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmClassVariablesRef getSelf() {
    return self;
  }

  public void setSelf(SdtmClassVariablesRef self) {
    this.self = self;
  }

  public SdtmClassVariablesLinks self(SdtmClassVariablesRef self) {
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

  public SdtmClassVariablesLinks parentProduct(SdtmProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmClassVariablesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmClassVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmClassVariablesLinks priorVersion(SdtmClassVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get classVariables
   * @return classVariables
  **/
  @JsonProperty("classVariables")
  public List<SdtmClassVariableRefElement> getClassVariables() {
    return classVariables;
  }

  public void setClassVariables(List<SdtmClassVariableRefElement> classVariables) {
    this.classVariables = classVariables;
  }

  public SdtmClassVariablesLinks classVariables(List<SdtmClassVariableRefElement> classVariables) {
    this.classVariables = classVariables;
    return this;
  }

  public SdtmClassVariablesLinks addClassVariablesItem(SdtmClassVariableRefElement classVariablesItem) {
    this.classVariables.add(classVariablesItem);
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
    SdtmClassVariablesLinks sdtmClassVariablesLinks = (SdtmClassVariablesLinks) o;
    return Objects.equals(this.self, sdtmClassVariablesLinks.self) &&
        Objects.equals(this.parentProduct, sdtmClassVariablesLinks.parentProduct) &&
        Objects.equals(this.priorVersion, sdtmClassVariablesLinks.priorVersion) &&
        Objects.equals(this.classVariables, sdtmClassVariablesLinks.classVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion, classVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassVariablesLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    classVariables: ").append(toIndentedString(classVariables)).append("\n");
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

