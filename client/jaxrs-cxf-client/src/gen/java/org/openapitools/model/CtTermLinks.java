package org.openapitools.model;

import org.openapitools.model.CtCodelistRef;
import org.openapitools.model.CtPackageRef;
import org.openapitools.model.CtTermRef;
import org.openapitools.model.RootCtTermRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtTermLinks  {
  
  @ApiModelProperty(value = "")
  private CtTermRef self;

  @ApiModelProperty(value = "")
  private CtPackageRef parentPackage;

  @ApiModelProperty(value = "")
  private CtCodelistRef parentCodelist;

  @ApiModelProperty(value = "")
  private RootCtTermRef rootItem;

  @ApiModelProperty(value = "")
  private CtTermRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CtTermRef getSelf() {
    return self;
  }

  public void setSelf(CtTermRef self) {
    this.self = self;
  }

  public CtTermLinks self(CtTermRef self) {
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

  public CtTermLinks parentPackage(CtPackageRef parentPackage) {
    this.parentPackage = parentPackage;
    return this;
  }

 /**
   * Get parentCodelist
   * @return parentCodelist
  **/
  @JsonProperty("parentCodelist")
  public CtCodelistRef getParentCodelist() {
    return parentCodelist;
  }

  public void setParentCodelist(CtCodelistRef parentCodelist) {
    this.parentCodelist = parentCodelist;
  }

  public CtTermLinks parentCodelist(CtCodelistRef parentCodelist) {
    this.parentCodelist = parentCodelist;
    return this;
  }

 /**
   * Get rootItem
   * @return rootItem
  **/
  @JsonProperty("rootItem")
  public RootCtTermRef getRootItem() {
    return rootItem;
  }

  public void setRootItem(RootCtTermRef rootItem) {
    this.rootItem = rootItem;
  }

  public CtTermLinks rootItem(RootCtTermRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CtTermRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CtTermRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CtTermLinks priorVersion(CtTermRef priorVersion) {
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
    CtTermLinks ctTermLinks = (CtTermLinks) o;
    return Objects.equals(this.self, ctTermLinks.self) &&
        Objects.equals(this.parentPackage, ctTermLinks.parentPackage) &&
        Objects.equals(this.parentCodelist, ctTermLinks.parentCodelist) &&
        Objects.equals(this.rootItem, ctTermLinks.rootItem) &&
        Objects.equals(this.priorVersion, ctTermLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentPackage, parentCodelist, rootItem, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtTermLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentPackage: ").append(toIndentedString(parentPackage)).append("\n");
    sb.append("    parentCodelist: ").append(toIndentedString(parentCodelist)).append("\n");
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

