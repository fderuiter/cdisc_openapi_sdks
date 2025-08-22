package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigDomainFieldRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.RootCdashigDomainFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmClassVariableRefTarget;
import org.openapitools.model.SdtmigDatasetVariableRefTarget;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigDomainFieldLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigDomainFieldRef self;

  @ApiModelProperty(value = "")
  private List<RootCtCodelistRefElement> codelist = new ArrayList<>();

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigDomainRef parentDomain;

  @ApiModelProperty(value = "")
  private RootCdashigDomainFieldRef rootItem;

  @ApiModelProperty(value = "")
  private CdashigDomainFieldRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmClassVariableRefTarget> sdtmClassMappingTargets = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigDomainFieldRef getSelf() {
    return self;
  }

  public void setSelf(CdashigDomainFieldRef self) {
    this.self = self;
  }

  public CdashigDomainFieldLinks self(CdashigDomainFieldRef self) {
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

  public CdashigDomainFieldLinks codelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
    return this;
  }

  public CdashigDomainFieldLinks addCodelistItem(RootCtCodelistRefElement codelistItem) {
    this.codelist.add(codelistItem);
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashigDomainFieldLinks parentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentDomain
   * @return parentDomain
  **/
  @JsonProperty("parentDomain")
  public CdashigDomainRef getParentDomain() {
    return parentDomain;
  }

  public void setParentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
  }

  public CdashigDomainFieldLinks parentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootCdashigDomainFieldRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootCdashigDomainFieldRef rootItem) {
    this.rootItem = rootItem;
  }

  public CdashigDomainFieldLinks rootItem(RootCdashigDomainFieldRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashigDomainFieldRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashigDomainFieldRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashigDomainFieldLinks priorVersion(CdashigDomainFieldRef priorVersion) {
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

  public CdashigDomainFieldLinks sdtmClassMappingTargets(List<SdtmClassVariableRefTarget> sdtmClassMappingTargets) {
    this.sdtmClassMappingTargets = sdtmClassMappingTargets;
    return this;
  }

  public CdashigDomainFieldLinks addSdtmClassMappingTargetsItem(SdtmClassVariableRefTarget sdtmClassMappingTargetsItem) {
    this.sdtmClassMappingTargets.add(sdtmClassMappingTargetsItem);
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

  public CdashigDomainFieldLinks sdtmigDatasetMappingTargets(List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets) {
    this.sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
    return this;
  }

  public CdashigDomainFieldLinks addSdtmigDatasetMappingTargetsItem(SdtmigDatasetVariableRefTarget sdtmigDatasetMappingTargetsItem) {
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
    CdashigDomainFieldLinks cdashigDomainFieldLinks = (CdashigDomainFieldLinks) o;
    return Objects.equals(this.self, cdashigDomainFieldLinks.self) &&
        Objects.equals(this.codelist, cdashigDomainFieldLinks.codelist) &&
        Objects.equals(this.parentProduct, cdashigDomainFieldLinks.parentProduct) &&
        Objects.equals(this.parentDomain, cdashigDomainFieldLinks.parentDomain) &&
        Objects.equals(this.rootItem, cdashigDomainFieldLinks.rootItem) &&
        Objects.equals(this.priorVersion, cdashigDomainFieldLinks.priorVersion) &&
        Objects.equals(this.sdtmClassMappingTargets, cdashigDomainFieldLinks.sdtmClassMappingTargets) &&
        Objects.equals(this.sdtmigDatasetMappingTargets, cdashigDomainFieldLinks.sdtmigDatasetMappingTargets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, parentProduct, parentDomain, rootItem, priorVersion, sdtmClassMappingTargets, sdtmigDatasetMappingTargets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigDomainFieldLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    codelist: ").append(toIndentedString(codelist)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentDomain: ").append(toIndentedString(parentDomain)).append("\n");
    sb.append("    rootItem: ").append(toIndentedString(rootItem)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    sdtmClassMappingTargets: ").append(toIndentedString(sdtmClassMappingTargets)).append("\n");
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

