package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtCodelistTermsRef;
import org.openapitools.model.CtPackageRef;
import org.openapitools.model.CtTermRefElement;
import org.openapitools.model.RootCtCodelistRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtCodelistTermsLinks  {
  
  @ApiModelProperty(value = "")
  private CtCodelistTermsRef self;

  @ApiModelProperty(value = "")
  private CtPackageRef parentPackage;

  @ApiModelProperty(value = "")
  private RootCtCodelistRef rootItem;

  @ApiModelProperty(value = "")
  private CtCodelistTermsRef priorVersion;

  @ApiModelProperty(value = "")
  private List<CtTermRefElement> terms = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CtCodelistTermsRef getSelf() {
    return self;
  }

  public void setSelf(CtCodelistTermsRef self) {
    this.self = self;
  }

  public CtCodelistTermsLinks self(CtCodelistTermsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentPackage
   * @return parentPackage
  **/
  @JsonProperty("parentPackage")
  public CtPackageRef getParentPackage() {
    return parentPackage;
  }

  public void setParentPackage(CtPackageRef parentPackage) {
    this.parentPackage = parentPackage;
  }

  public CtCodelistTermsLinks parentPackage(CtPackageRef parentPackage) {
    this.parentPackage = parentPackage;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootCtCodelistRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootCtCodelistRef rootItem) {
    this.rootItem = rootItem;
  }

  public CtCodelistTermsLinks rootItem(RootCtCodelistRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CtCodelistTermsRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CtCodelistTermsRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CtCodelistTermsLinks priorVersion(CtCodelistTermsRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get terms
   * @return terms
  **/
  @JsonProperty("terms")
  public List<CtTermRefElement> getTerms() {
    return terms;
  }

  public void setTerms(List<CtTermRefElement> terms) {
    this.terms = terms;
  }

  public CtCodelistTermsLinks terms(List<CtTermRefElement> terms) {
    this.terms = terms;
    return this;
  }

  public CtCodelistTermsLinks addTermsItem(CtTermRefElement termsItem) {
    this.terms.add(termsItem);
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
    CtCodelistTermsLinks ctCodelistTermsLinks = (CtCodelistTermsLinks) o;
    return Objects.equals(this.self, ctCodelistTermsLinks.self) &&
        Objects.equals(this.parentPackage, ctCodelistTermsLinks.parentPackage) &&
        Objects.equals(this.rootItem, ctCodelistTermsLinks.rootItem) &&
        Objects.equals(this.priorVersion, ctCodelistTermsLinks.priorVersion) &&
        Objects.equals(this.terms, ctCodelistTermsLinks.terms);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentPackage, rootItem, priorVersion, terms);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtCodelistTermsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentPackage: ").append(toIndentedString(parentPackage)).append("\n");
    sb.append("    rootItem: ").append(toIndentedString(rootItem)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    terms: ").append(toIndentedString(terms)).append("\n");
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

