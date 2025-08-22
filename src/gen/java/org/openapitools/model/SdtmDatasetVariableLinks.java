package org.openapitools.model;

import org.openapitools.model.RootSdtmDatasetVariableRef;
import org.openapitools.model.SdtmDatasetRef;
import org.openapitools.model.SdtmDatasetVariableRef;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmDatasetVariableLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmDatasetVariableRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmDatasetRef parentDataset;

  @ApiModelProperty(value = "")
  private RootSdtmDatasetVariableRef rootItem;

  @ApiModelProperty(value = "")
  private SdtmDatasetVariableRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmDatasetVariableRef getSelf() {
    return self;
  }

  public void setSelf(SdtmDatasetVariableRef self) {
    this.self = self;
  }

  public SdtmDatasetVariableLinks self(SdtmDatasetVariableRef self) {
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

  public SdtmDatasetVariableLinks parentProduct(SdtmProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentDataset
   * @return parentDataset
  **/
  @JsonProperty("parentDataset")
  public SdtmDatasetRef getParentDataset() {
    return parentDataset;
  }

  public void setParentDataset(SdtmDatasetRef parentDataset) {
    this.parentDataset = parentDataset;
  }

  public SdtmDatasetVariableLinks parentDataset(SdtmDatasetRef parentDataset) {
    this.parentDataset = parentDataset;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootSdtmDatasetVariableRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootSdtmDatasetVariableRef rootItem) {
    this.rootItem = rootItem;
  }

  public SdtmDatasetVariableLinks rootItem(RootSdtmDatasetVariableRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmDatasetVariableRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmDatasetVariableRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmDatasetVariableLinks priorVersion(SdtmDatasetVariableRef priorVersion) {
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
    SdtmDatasetVariableLinks sdtmDatasetVariableLinks = (SdtmDatasetVariableLinks) o;
    return Objects.equals(this.self, sdtmDatasetVariableLinks.self) &&
        Objects.equals(this.parentProduct, sdtmDatasetVariableLinks.parentProduct) &&
        Objects.equals(this.parentDataset, sdtmDatasetVariableLinks.parentDataset) &&
        Objects.equals(this.rootItem, sdtmDatasetVariableLinks.rootItem) &&
        Objects.equals(this.priorVersion, sdtmDatasetVariableLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentDataset, rootItem, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmDatasetVariableLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

