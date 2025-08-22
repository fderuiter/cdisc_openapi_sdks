package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.RootSdtmigDatasetVariableRef;
import org.openapitools.model.SdtmClassVariableRef;
import org.openapitools.model.SdtmDatasetVariableRef;
import org.openapitools.model.SdtmigDatasetRef;
import org.openapitools.model.SdtmigDatasetVariableRef;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetVariableLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigDatasetVariableRef self;

  @ApiModelProperty(value = "")
  private List<RootCtCodelistRefElement> codelist = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SdtmClassVariableRef modelClassVariable;

  @ApiModelProperty(value = "")
  private SdtmDatasetVariableRef modelDatasetVariable;

  @ApiModelProperty(value = "")
  private SdtmigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmigDatasetRef parentDataset;

  @ApiModelProperty(value = "")
  private RootSdtmigDatasetVariableRef rootItem;

  @ApiModelProperty(value = "")
  private SdtmigDatasetVariableRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigDatasetVariableRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigDatasetVariableRef self) {
    this.self = self;
  }

  public SdtmigDatasetVariableLinks self(SdtmigDatasetVariableRef self) {
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

  public SdtmigDatasetVariableLinks codelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
    return this;
  }

  public SdtmigDatasetVariableLinks addCodelistItem(RootCtCodelistRefElement codelistItem) {
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

  public SdtmigDatasetVariableLinks modelClassVariable(SdtmClassVariableRef modelClassVariable) {
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

  public SdtmigDatasetVariableLinks modelDatasetVariable(SdtmDatasetVariableRef modelDatasetVariable) {
    this.modelDatasetVariable = modelDatasetVariable;
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

  public SdtmigDatasetVariableLinks parentProduct(SdtmigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentDataset
   * @return parentDataset
  **/
  @JsonProperty("parentDataset")
  public SdtmigDatasetRef getParentDataset() {
    return parentDataset;
  }

  public void setParentDataset(SdtmigDatasetRef parentDataset) {
    this.parentDataset = parentDataset;
  }

  public SdtmigDatasetVariableLinks parentDataset(SdtmigDatasetRef parentDataset) {
    this.parentDataset = parentDataset;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootSdtmigDatasetVariableRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootSdtmigDatasetVariableRef rootItem) {
    this.rootItem = rootItem;
  }

  public SdtmigDatasetVariableLinks rootItem(RootSdtmigDatasetVariableRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigDatasetVariableRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigDatasetVariableRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigDatasetVariableLinks priorVersion(SdtmigDatasetVariableRef priorVersion) {
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
    SdtmigDatasetVariableLinks sdtmigDatasetVariableLinks = (SdtmigDatasetVariableLinks) o;
    return Objects.equals(this.self, sdtmigDatasetVariableLinks.self) &&
        Objects.equals(this.codelist, sdtmigDatasetVariableLinks.codelist) &&
        Objects.equals(this.modelClassVariable, sdtmigDatasetVariableLinks.modelClassVariable) &&
        Objects.equals(this.modelDatasetVariable, sdtmigDatasetVariableLinks.modelDatasetVariable) &&
        Objects.equals(this.parentProduct, sdtmigDatasetVariableLinks.parentProduct) &&
        Objects.equals(this.parentDataset, sdtmigDatasetVariableLinks.parentDataset) &&
        Objects.equals(this.rootItem, sdtmigDatasetVariableLinks.rootItem) &&
        Objects.equals(this.priorVersion, sdtmigDatasetVariableLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, modelClassVariable, modelDatasetVariable, parentProduct, parentDataset, rootItem, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetVariableLinks {\n");
    
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

