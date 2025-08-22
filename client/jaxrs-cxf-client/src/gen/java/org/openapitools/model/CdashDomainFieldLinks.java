package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashDomainFieldRef;
import org.openapitools.model.CdashDomainRef;
import org.openapitools.model.CdashProductRef;
import org.openapitools.model.RootCdashDomainFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmDatasetVariableRefTarget;
import org.openapitools.model.SdtmigDatasetVariableRefTarget;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashDomainFieldLinks  {
  
  @ApiModelProperty(value = "")
  private CdashDomainFieldRef self;

  @ApiModelProperty(value = "")
  private List<RootCtCodelistRefElement> codelist = new ArrayList<>();

  @ApiModelProperty(value = "")
  private CdashProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashClassRef parentClass;

  @ApiModelProperty(value = "")
  private CdashDomainRef parentDomain;

  @ApiModelProperty(value = "")
  private RootCdashDomainFieldRef rootItem;

  @ApiModelProperty(value = "")
  private CdashDomainFieldRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashDomainFieldRef getSelf() {
    return self;
  }

  public void setSelf(CdashDomainFieldRef self) {
    this.self = self;
  }

  public CdashDomainFieldLinks self(CdashDomainFieldRef self) {
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

  public CdashDomainFieldLinks codelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
    return this;
  }

  public CdashDomainFieldLinks addCodelistItem(RootCtCodelistRefElement codelistItem) {
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

  public CdashDomainFieldLinks parentProduct(CdashProductRef parentProduct) {
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

  public CdashDomainFieldLinks parentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get parentDomain
   * @return parentDomain
  **/
  @JsonProperty("parentDomain")
  public CdashDomainRef getParentDomain() {
    return parentDomain;
  }

  public void setParentDomain(CdashDomainRef parentDomain) {
    this.parentDomain = parentDomain;
  }

  public CdashDomainFieldLinks parentDomain(CdashDomainRef parentDomain) {
    this.parentDomain = parentDomain;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootCdashDomainFieldRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootCdashDomainFieldRef rootItem) {
    this.rootItem = rootItem;
  }

  public CdashDomainFieldLinks rootItem(RootCdashDomainFieldRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashDomainFieldRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashDomainFieldRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashDomainFieldLinks priorVersion(CdashDomainFieldRef priorVersion) {
    this.priorVersion = priorVersion;
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

  public CdashDomainFieldLinks sdtmDatasetMappingTargets(List<SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets) {
    this.sdtmDatasetMappingTargets = sdtmDatasetMappingTargets;
    return this;
  }

  public CdashDomainFieldLinks addSdtmDatasetMappingTargetsItem(SdtmDatasetVariableRefTarget sdtmDatasetMappingTargetsItem) {
    this.sdtmDatasetMappingTargets.add(sdtmDatasetMappingTargetsItem);
    return this;
  }

 /**
   * Get sdtmigDatasetMappingTargets
   * @return sdtmigDatasetMappingTargets
  **/
  @JsonProperty("sdtmigDatasetMappingTargets")
  public List<SdtmigDatasetVariableRefTarget> getSdtmigDatasetMappingTargets() {
    return sdtmigDatasetMappingTargets;
  }

  public void setSdtmigDatasetMappingTargets(List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets) {
    this.sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
  }

  public CdashDomainFieldLinks sdtmigDatasetMappingTargets(List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets) {
    this.sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
    return this;
  }

  public CdashDomainFieldLinks addSdtmigDatasetMappingTargetsItem(SdtmigDatasetVariableRefTarget sdtmigDatasetMappingTargetsItem) {
    this.sdtmigDatasetMappingTargets.add(sdtmigDatasetMappingTargetsItem);
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
    CdashDomainFieldLinks cdashDomainFieldLinks = (CdashDomainFieldLinks) o;
    return Objects.equals(this.self, cdashDomainFieldLinks.self) &&
        Objects.equals(this.codelist, cdashDomainFieldLinks.codelist) &&
        Objects.equals(this.parentProduct, cdashDomainFieldLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashDomainFieldLinks.parentClass) &&
        Objects.equals(this.parentDomain, cdashDomainFieldLinks.parentDomain) &&
        Objects.equals(this.rootItem, cdashDomainFieldLinks.rootItem) &&
        Objects.equals(this.priorVersion, cdashDomainFieldLinks.priorVersion) &&
        Objects.equals(this.sdtmDatasetMappingTargets, cdashDomainFieldLinks.sdtmDatasetMappingTargets) &&
        Objects.equals(this.sdtmigDatasetMappingTargets, cdashDomainFieldLinks.sdtmigDatasetMappingTargets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, parentProduct, parentClass, parentDomain, rootItem, priorVersion, sdtmDatasetMappingTargets, sdtmigDatasetMappingTargets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashDomainFieldLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    codelist: ").append(toIndentedString(codelist)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    parentDomain: ").append(toIndentedString(parentDomain)).append("\n");
    sb.append("    rootItem: ").append(toIndentedString(rootItem)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    sdtmDatasetMappingTargets: ").append(toIndentedString(sdtmDatasetMappingTargets)).append("\n");
    sb.append("    sdtmigDatasetMappingTargets: ").append(toIndentedString(sdtmigDatasetMappingTargets)).append("\n");
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

