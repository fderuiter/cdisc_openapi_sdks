package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootSdtmClassVariableRef;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmClassVariableRef;
import org.openapitools.model.SdtmClassVariableRefQualifies;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassVariableLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmClassVariableRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<SdtmClassVariableRefQualifies> qualifiesVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private RootSdtmClassVariableRef rootItem;

  @ApiModelProperty(value = "")
  private SdtmClassVariableRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmClassVariableRef getSelf() {
    return self;
  }

  public void setSelf(SdtmClassVariableRef self) {
    this.self = self;
  }

  public SdtmClassVariableLinks self(SdtmClassVariableRef self) {
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

  public SdtmClassVariableLinks parentProduct(SdtmProductRef parentProduct) {
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

  public SdtmClassVariableLinks parentClass(SdtmClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get qualifiesVariables
   * @return qualifiesVariables
  **/
  @JsonProperty("qualifiesVariables")
  public List<SdtmClassVariableRefQualifies> getQualifiesVariables() {
    return qualifiesVariables;
  }

  public void setQualifiesVariables(List<SdtmClassVariableRefQualifies> qualifiesVariables) {
    this.qualifiesVariables = qualifiesVariables;
  }

  public SdtmClassVariableLinks qualifiesVariables(List<SdtmClassVariableRefQualifies> qualifiesVariables) {
    this.qualifiesVariables = qualifiesVariables;
    return this;
  }

  public SdtmClassVariableLinks addQualifiesVariablesItem(SdtmClassVariableRefQualifies qualifiesVariablesItem) {
    this.qualifiesVariables.add(qualifiesVariablesItem);
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootSdtmClassVariableRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootSdtmClassVariableRef rootItem) {
    this.rootItem = rootItem;
  }

  public SdtmClassVariableLinks rootItem(RootSdtmClassVariableRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmClassVariableRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmClassVariableRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmClassVariableLinks priorVersion(SdtmClassVariableRef priorVersion) {
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
    SdtmClassVariableLinks sdtmClassVariableLinks = (SdtmClassVariableLinks) o;
    return Objects.equals(this.self, sdtmClassVariableLinks.self) &&
        Objects.equals(this.parentProduct, sdtmClassVariableLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmClassVariableLinks.parentClass) &&
        Objects.equals(this.qualifiesVariables, sdtmClassVariableLinks.qualifiesVariables) &&
        Objects.equals(this.rootItem, sdtmClassVariableLinks.rootItem) &&
        Objects.equals(this.priorVersion, sdtmClassVariableLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, qualifiesVariables, rootItem, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassVariableLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    qualifiesVariables: ").append(toIndentedString(qualifiesVariables)).append("\n");
    sb.append("    rootItem: ").append(toIndentedString(rootItem)).append("\n");
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

