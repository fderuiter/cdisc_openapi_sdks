package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.RootSendigDatasetVariableRef;
import org.openapitools.model.SdtmClassVariableRef;
import org.openapitools.model.SdtmDatasetVariableRef;
import org.openapitools.model.SendigDatasetRef;
import org.openapitools.model.SendigDatasetVariableRef;
import org.openapitools.model.SendigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigDatasetVariableLinks  {
  
  @ApiModelProperty(value = "")
  private SendigDatasetVariableRef self;

  @ApiModelProperty(value = "")
  private List<RootCtCodelistRefElement> codelist = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SdtmClassVariableRef modelClassVariable;

  @ApiModelProperty(value = "")
  private SdtmDatasetVariableRef modelDatasetVariable;

  @ApiModelProperty(value = "")
  private SendigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SendigDatasetRef parentDataset;

  @ApiModelProperty(value = "")
  private RootSendigDatasetVariableRef rootItem;

  @ApiModelProperty(value = "")
  private SendigDatasetVariableRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigDatasetVariableRef getSelf() {
    return self;
  }

  public void setSelf(SendigDatasetVariableRef self) {
    this.self = self;
  }

  public SendigDatasetVariableLinks self(SendigDatasetVariableRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get codelist
   * @return codelist
  **/
  @JsonProperty("codelist")
  public List<RootCtCodelistRefElement> getCodelist() {
    return codelist;
  }

  public void setCodelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
  }

  public SendigDatasetVariableLinks codelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
    return this;
  }

  public SendigDatasetVariableLinks addCodelistItem(RootCtCodelistRefElement codelistItem) {
    this.codelist.add(codelistItem);
    return this;
  }

 /**
   * Get modelClassVariable
   * @return modelClassVariable
  **/
  @JsonProperty("modelClassVariable")
  public SdtmClassVariableRef getModelClassVariable() {
    return modelClassVariable;
  }

  public void setModelClassVariable(SdtmClassVariableRef modelClassVariable) {
    this.modelClassVariable = modelClassVariable;
  }

  public SendigDatasetVariableLinks modelClassVariable(SdtmClassVariableRef modelClassVariable) {
    this.modelClassVariable = modelClassVariable;
    return this;
  }

 /**
   * Get modelDatasetVariable
   * @return modelDatasetVariable
  **/
  @JsonProperty("modelDatasetVariable")
  public SdtmDatasetVariableRef getModelDatasetVariable() {
    return modelDatasetVariable;
  }

  public void setModelDatasetVariable(SdtmDatasetVariableRef modelDatasetVariable) {
    this.modelDatasetVariable = modelDatasetVariable;
  }

  public SendigDatasetVariableLinks modelDatasetVariable(SdtmDatasetVariableRef modelDatasetVariable) {
    this.modelDatasetVariable = modelDatasetVariable;
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

  public SendigDatasetVariableLinks parentProduct(SendigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentDataset
   * @return parentDataset
  **/
  @JsonProperty("parentDataset")
  public SendigDatasetRef getParentDataset() {
    return parentDataset;
  }

  public void setParentDataset(SendigDatasetRef parentDataset) {
    this.parentDataset = parentDataset;
  }

  public SendigDatasetVariableLinks parentDataset(SendigDatasetRef parentDataset) {
    this.parentDataset = parentDataset;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootSendigDatasetVariableRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootSendigDatasetVariableRef rootItem) {
    this.rootItem = rootItem;
  }

  public SendigDatasetVariableLinks rootItem(RootSendigDatasetVariableRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SendigDatasetVariableRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SendigDatasetVariableRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SendigDatasetVariableLinks priorVersion(SendigDatasetVariableRef priorVersion) {
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
    SendigDatasetVariableLinks sendigDatasetVariableLinks = (SendigDatasetVariableLinks) o;
    return Objects.equals(this.self, sendigDatasetVariableLinks.self) &&
        Objects.equals(this.codelist, sendigDatasetVariableLinks.codelist) &&
        Objects.equals(this.modelClassVariable, sendigDatasetVariableLinks.modelClassVariable) &&
        Objects.equals(this.modelDatasetVariable, sendigDatasetVariableLinks.modelDatasetVariable) &&
        Objects.equals(this.parentProduct, sendigDatasetVariableLinks.parentProduct) &&
        Objects.equals(this.parentDataset, sendigDatasetVariableLinks.parentDataset) &&
        Objects.equals(this.rootItem, sendigDatasetVariableLinks.rootItem) &&
        Objects.equals(this.priorVersion, sendigDatasetVariableLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, modelClassVariable, modelDatasetVariable, parentProduct, parentDataset, rootItem, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigDatasetVariableLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    codelist: ").append(toIndentedString(codelist)).append("\n");
    sb.append("    modelClassVariable: ").append(toIndentedString(modelClassVariable)).append("\n");
    sb.append("    modelDatasetVariable: ").append(toIndentedString(modelDatasetVariable)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentDataset: ").append(toIndentedString(parentDataset)).append("\n");
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

