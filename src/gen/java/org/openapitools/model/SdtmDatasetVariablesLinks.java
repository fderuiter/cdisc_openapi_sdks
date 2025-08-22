package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassRef;
import org.openapitools.model.SdtmDatasetVariableRefElement;
import org.openapitools.model.SdtmDatasetVariablesRef;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmDatasetVariablesLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmDatasetVariablesRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmClassRef parentClass;

  @ApiModelProperty(value = "")
  private SdtmDatasetVariablesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmDatasetVariableRefElement> datasetVariables = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmDatasetVariablesRef getSelf() {
    return self;
  }

  public void setSelf(SdtmDatasetVariablesRef self) {
    this.self = self;
  }

  public SdtmDatasetVariablesLinks self(SdtmDatasetVariablesRef self) {
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

  public SdtmDatasetVariablesLinks parentProduct(SdtmProductRef parentProduct) {
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

  public SdtmDatasetVariablesLinks parentClass(SdtmClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmDatasetVariablesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmDatasetVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmDatasetVariablesLinks priorVersion(SdtmDatasetVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get datasetVariables
   * @return datasetVariables
  **/
  @JsonProperty("datasetVariables")
  public List<SdtmDatasetVariableRefElement> getDatasetVariables() {
    return datasetVariables;
  }

  public void setDatasetVariables(List<SdtmDatasetVariableRefElement> datasetVariables) {
    this.datasetVariables = datasetVariables;
  }

  public SdtmDatasetVariablesLinks datasetVariables(List<SdtmDatasetVariableRefElement> datasetVariables) {
    this.datasetVariables = datasetVariables;
    return this;
  }

  public SdtmDatasetVariablesLinks addDatasetVariablesItem(SdtmDatasetVariableRefElement datasetVariablesItem) {
    this.datasetVariables.add(datasetVariablesItem);
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
    SdtmDatasetVariablesLinks sdtmDatasetVariablesLinks = (SdtmDatasetVariablesLinks) o;
    return Objects.equals(this.self, sdtmDatasetVariablesLinks.self) &&
        Objects.equals(this.parentProduct, sdtmDatasetVariablesLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmDatasetVariablesLinks.parentClass) &&
        Objects.equals(this.priorVersion, sdtmDatasetVariablesLinks.priorVersion) &&
        Objects.equals(this.datasetVariables, sdtmDatasetVariablesLinks.datasetVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, priorVersion, datasetVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmDatasetVariablesLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    datasetVariables: ").append(toIndentedString(datasetVariables)).append("\n");
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

