package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioFieldRef;
import org.openapitools.model.CdashigScenarioRef;
import org.openapitools.model.RootCdashigScenarioFieldRef;
import org.openapitools.model.RootCtCodelistRefElement;
import org.openapitools.model.SdtmigDatasetVariableRefTarget;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigScenarioFieldLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigScenarioFieldRef self;

  @ApiModelProperty(value = "")
  private List<RootCtCodelistRefElement> codelist = new ArrayList<>();

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigDomainRef parentDomain;

  @ApiModelProperty(value = "")
  private CdashigScenarioRef parentScenario;

  @ApiModelProperty(value = "")
  private RootCdashigScenarioFieldRef rootItem;

  @ApiModelProperty(value = "")
  private CdashigScenarioFieldRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigScenarioFieldRef getSelf() {
    return self;
  }

  public void setSelf(CdashigScenarioFieldRef self) {
    this.self = self;
  }

  public CdashigScenarioFieldLinks self(CdashigScenarioFieldRef self) {
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

  public CdashigScenarioFieldLinks codelist(List<RootCtCodelistRefElement> codelist) {
    this.codelist = codelist;
    return this;
  }

  public CdashigScenarioFieldLinks addCodelistItem(RootCtCodelistRefElement codelistItem) {
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

  public CdashigScenarioFieldLinks parentProduct(CdashigProductRef parentProduct) {
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

  public CdashigScenarioFieldLinks parentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
    return this;
  }

 /**
   * Get parentScenario
   * @return parentScenario
  **/
  @JsonProperty("parentScenario")
  public CdashigScenarioRef getParentScenario() {
    return parentScenario;
  }

  public void setParentScenario(CdashigScenarioRef parentScenario) {
    this.parentScenario = parentScenario;
  }

  public CdashigScenarioFieldLinks parentScenario(CdashigScenarioRef parentScenario) {
    this.parentScenario = parentScenario;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootCdashigScenarioFieldRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootCdashigScenarioFieldRef rootItem) {
    this.rootItem = rootItem;
  }

  public CdashigScenarioFieldLinks rootItem(RootCdashigScenarioFieldRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashigScenarioFieldRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashigScenarioFieldRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashigScenarioFieldLinks priorVersion(CdashigScenarioFieldRef priorVersion) {
    this.priorVersion = priorVersion;
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

  public CdashigScenarioFieldLinks sdtmigDatasetMappingTargets(List<SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets) {
    this.sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
    return this;
  }

  public CdashigScenarioFieldLinks addSdtmigDatasetMappingTargetsItem(SdtmigDatasetVariableRefTarget sdtmigDatasetMappingTargetsItem) {
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
    CdashigScenarioFieldLinks cdashigScenarioFieldLinks = (CdashigScenarioFieldLinks) o;
    return Objects.equals(this.self, cdashigScenarioFieldLinks.self) &&
        Objects.equals(this.codelist, cdashigScenarioFieldLinks.codelist) &&
        Objects.equals(this.parentProduct, cdashigScenarioFieldLinks.parentProduct) &&
        Objects.equals(this.parentDomain, cdashigScenarioFieldLinks.parentDomain) &&
        Objects.equals(this.parentScenario, cdashigScenarioFieldLinks.parentScenario) &&
        Objects.equals(this.rootItem, cdashigScenarioFieldLinks.rootItem) &&
        Objects.equals(this.priorVersion, cdashigScenarioFieldLinks.priorVersion) &&
        Objects.equals(this.sdtmigDatasetMappingTargets, cdashigScenarioFieldLinks.sdtmigDatasetMappingTargets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, parentProduct, parentDomain, parentScenario, rootItem, priorVersion, sdtmigDatasetMappingTargets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigScenarioFieldLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    codelist: ").append(toIndentedString(codelist)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentDomain: ").append(toIndentedString(parentDomain)).append("\n");
    sb.append("    parentScenario: ").append(toIndentedString(parentScenario)).append("\n");
    sb.append("    rootItem: ").append(toIndentedString(rootItem)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
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

