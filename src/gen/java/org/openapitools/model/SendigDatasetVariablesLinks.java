package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SendigClassRef;
import org.openapitools.model.SendigDatasetVariableRefElement;
import org.openapitools.model.SendigDatasetVariablesRef;
import org.openapitools.model.SendigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigDatasetVariablesLinks  {
  
  @ApiModelProperty(value = "")
  private SendigDatasetVariablesRef self;

  @ApiModelProperty(value = "")
  private SdtmDatasetRef modelDataset;

  @ApiModelProperty(value = "")
  private SendigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SendigClassRef parentClass;

  @ApiModelProperty(value = "")
  private SendigDatasetVariablesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SendigDatasetVariableRefElement> datasetVariables = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigDatasetVariablesRef getSelf() {
    return self;
  }

  public void setSelf(SendigDatasetVariablesRef self) {
    this.self = self;
  }

  public SendigDatasetVariablesLinks self(SendigDatasetVariablesRef self) {
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

  public SendigDatasetVariablesLinks modelDataset(SdtmDatasetRef modelDataset) {
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

  public SendigDatasetVariablesLinks parentProduct(SendigProductRef parentProduct) {
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

  public SendigDatasetVariablesLinks parentClass(SendigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SendigDatasetVariablesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SendigDatasetVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SendigDatasetVariablesLinks priorVersion(SendigDatasetVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get datasetVariables
   * @return datasetVariables
  **/
  @JsonProperty("datasetVariables")
  public List<SendigDatasetVariableRefElement> getDatasetVariables() {
    return datasetVariables;
  }

  public void setDatasetVariables(List<SendigDatasetVariableRefElement> datasetVariables) {
    this.datasetVariables = datasetVariables;
  }

  public SendigDatasetVariablesLinks datasetVariables(List<SendigDatasetVariableRefElement> datasetVariables) {
    this.datasetVariables = datasetVariables;
    return this;
  }

  public SendigDatasetVariablesLinks addDatasetVariablesItem(SendigDatasetVariableRefElement datasetVariablesItem) {
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
    SendigDatasetVariablesLinks sendigDatasetVariablesLinks = (SendigDatasetVariablesLinks) o;
    return Objects.equals(this.self, sendigDatasetVariablesLinks.self) &&
        Objects.equals(this.modelDataset, sendigDatasetVariablesLinks.modelDataset) &&
        Objects.equals(this.parentProduct, sendigDatasetVariablesLinks.parentProduct) &&
        Objects.equals(this.parentClass, sendigDatasetVariablesLinks.parentClass) &&
        Objects.equals(this.priorVersion, sendigDatasetVariablesLinks.priorVersion) &&
        Objects.equals(this.datasetVariables, sendigDatasetVariablesLinks.datasetVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, modelDataset, parentProduct, parentClass, priorVersion, datasetVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigDatasetVariablesLinks {\n");
    
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

