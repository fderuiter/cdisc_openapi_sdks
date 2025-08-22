package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassFieldRef;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashProductRef;
import org.openapitools.model.RootCdashClassFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmClassVariableRefTarget;
import org.openapitools.model.SdtmDatasetVariableRefTarget;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashClassFieldLinks  {
  
  @ApiModelProperty(value = "")
  private CdashClassFieldRef self;

  @ApiModelProperty(value = "")
  private List<RootCtCodelistRefElement> codelist = new ArrayList<>();

  @ApiModelProperty(value = "")
  private CdashProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashClassRef parentClass;

  @ApiModelProperty(value = "")
  private RootCdashClassFieldRef rootItem;

  @ApiModelProperty(value = "")
  private CdashClassFieldRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmClassVariableRefTarget> sdtmClassMappingTargets = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashClassFieldRef getSelf() {
    return self;
  }

  public void setSelf(CdashClassFieldRef self) {
    this.self = self;
  }

  public CdashClassFieldLinks self(CdashClassFieldRef self) {
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

  public CdashClassFieldLinks codelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
    return this;
  }

  public CdashClassFieldLinks addCodelistItem(RootCtCodelistRefElement codelistItem) {
    this.codelist.add(codelistItem);
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashClassFieldLinks parentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public CdashClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public CdashClassFieldLinks parentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootCdashClassFieldRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootCdashClassFieldRef rootItem) {
    this.rootItem = rootItem;
  }

  public CdashClassFieldLinks rootItem(RootCdashClassFieldRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashClassFieldRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashClassFieldRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashClassFieldLinks priorVersion(CdashClassFieldRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get sdtmClassMappingTargets
   * @return sdtmClassMappingTargets
  **/
  @JsonProperty("sdtmClassMappingTargets")
  public List<SdtmClassVariableRefTarget> getSdtmClassMappingTargets() {
    return sdtmClassMappingTargets;
  }

  public void setSdtmClassMappingTargets(List<SdtmClassVariableRefTarget> sdtmClassMappingTargets) {
    this.sdtmClassMappingTargets = sdtmClassMappingTargets;
  }

  public CdashClassFieldLinks sdtmClassMappingTargets(List<SdtmClassVariableRefTarget> sdtmClassMappingTargets) {
    this.sdtmClassMappingTargets = sdtmClassMappingTargets;
    return this;
  }

  public CdashClassFieldLinks addSdtmClassMappingTargetsItem(SdtmClassVariableRefTarget sdtmClassMappingTargetsItem) {
    this.sdtmClassMappingTargets.add(sdtmClassMappingTargetsItem);
    return this;
  }

 /**
   * Get sdtmDatasetMappingTargets
   * @return sdtmDatasetMappingTargets
  **/
  @JsonProperty("sdtmDatasetMappingTargets")
  public List<SdtmDatasetVariableRefTarget> getSdtmDatasetMappingTargets() {
    return sdtmDatasetMappingTargets;
  }

  public void setSdtmDatasetMappingTargets(List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets) {
    this.sdtmDatasetMappingTargets = sdtmDatasetMappingTargets;
  }

  public CdashClassFieldLinks sdtmDatasetMappingTargets(List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets) {
    this.sdtmDatasetMappingTargets = sdtmDatasetMappingTargets;
    return this;
  }

  public CdashClassFieldLinks addSdtmDatasetMappingTargetsItem(SdtmDatasetVariableRefTarget sdtmDatasetMappingTargetsItem) {
    this.sdtmDatasetMappingTargets.add(sdtmDatasetMappingTargetsItem);
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
    CdashClassFieldLinks cdashClassFieldLinks = (CdashClassFieldLinks) o;
    return Objects.equals(this.self, cdashClassFieldLinks.self) &&
        Objects.equals(this.codelist, cdashClassFieldLinks.codelist) &&
        Objects.equals(this.parentProduct, cdashClassFieldLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashClassFieldLinks.parentClass) &&
        Objects.equals(this.rootItem, cdashClassFieldLinks.rootItem) &&
        Objects.equals(this.priorVersion, cdashClassFieldLinks.priorVersion) &&
        Objects.equals(this.sdtmClassMappingTargets, cdashClassFieldLinks.sdtmClassMappingTargets) &&
        Objects.equals(this.sdtmDatasetMappingTargets, cdashClassFieldLinks.sdtmDatasetMappingTargets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, parentProduct, parentClass, rootItem, priorVersion, sdtmClassMappingTargets, sdtmDatasetMappingTargets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashClassFieldLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    codelist: ").append(toIndentedString(codelist)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    rootItem: ").append(toIndentedString(rootItem)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    sdtmClassMappingTargets: ").append(toIndentedString(sdtmClassMappingTargets)).append("\n");
    sb.append("    sdtmDatasetMappingTargets: ").append(toIndentedString(sdtmDatasetMappingTargets)).append("\n");
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

