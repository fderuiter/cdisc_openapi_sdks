package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmigClassRef;
import org.openapitools.model.SdtmigDatasetVariableRefElement;
import org.openapitools.model.SdtmigDatasetVariablesRef;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetVariablesLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigDatasetVariablesRef self;

  @ApiModelProperty(value = "")
  private SdtmDatasetRef modelDataset;

  @ApiModelProperty(value = "")
  private SdtmigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmigClassRef parentClass;

  @ApiModelProperty(value = "")
  private SdtmigDatasetVariablesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetVariableRefElement> datasetVariables = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigDatasetVariablesRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigDatasetVariablesRef self) {
    this.self = self;
  }

  public SdtmigDatasetVariablesLinks self(SdtmigDatasetVariablesRef self) {
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

  public SdtmigDatasetVariablesLinks modelDataset(SdtmDatasetRef modelDataset) {
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

  public SdtmigDatasetVariablesLinks parentProduct(SdtmigProductRef parentProduct) {
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

  public SdtmigDatasetVariablesLinks parentClass(SdtmigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigDatasetVariablesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigDatasetVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigDatasetVariablesLinks priorVersion(SdtmigDatasetVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get datasetVariables
   * @return datasetVariables
  **/
  @JsonProperty("datasetVariables")
  public List<SdtmigDatasetVariableRefElement> getDatasetVariables() {
    return datasetVariables;
  }

  public void setDatasetVariables(List<SdtmigDatasetVariableRefElement> datasetVariables) {
    this.datasetVariables = datasetVariables;
  }

  public SdtmigDatasetVariablesLinks datasetVariables(List<SdtmigDatasetVariableRefElement> datasetVariables) {
    this.datasetVariables = datasetVariables;
    return this;
  }

  public SdtmigDatasetVariablesLinks addDatasetVariablesItem(SdtmigDatasetVariableRefElement datasetVariablesItem) {
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
    SdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks = (SdtmigDatasetVariablesLinks) o;
    return Objects.equals(this.self, sdtmigDatasetVariablesLinks.self) &&
        Objects.equals(this.modelDataset, sdtmigDatasetVariablesLinks.modelDataset) &&
        Objects.equals(this.parentProduct, sdtmigDatasetVariablesLinks.parentProduct) &&
        Objects.equals(this.parentClass, sdtmigDatasetVariablesLinks.parentClass) &&
        Objects.equals(this.priorVersion, sdtmigDatasetVariablesLinks.priorVersion) &&
        Objects.equals(this.datasetVariables, sdtmigDatasetVariablesLinks.datasetVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelDataset, parentProduct, parentClass, priorVersion, datasetVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetVariablesLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    modelDataset: ").append(toIndentedString(modelDataset)).append("\n");
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

