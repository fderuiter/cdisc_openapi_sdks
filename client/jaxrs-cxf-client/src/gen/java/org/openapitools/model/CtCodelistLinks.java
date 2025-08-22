package org.openapitools.model;

import org.openapitools.model.CtCodelistRef;
import org.openapitools.model.CtPackageRef;
import org.openapitools.model.RootCtCodelistRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtCodelistLinks  {
  
  @ApiModelProperty(value = "")
  private CtCodelistRef self;

  @ApiModelProperty(value = "")
  private CtPackageRef parentPackage;

  @ApiModelProperty(value = "")
  private RootCtCodelistRef rootItem;

  @ApiModelProperty(value = "")
  private CtCodelistRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CtCodelistRef getSelf() {
    return self;
  }

  public void setSelf(CtCodelistRef self) {
    this.self = self;
  }

  public CtCodelistLinks self(CtCodelistRef self) {
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

  public CtCodelistLinks parentPackage(CtPackageRef parentPackage) {
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

  public CtCodelistLinks rootItem(RootCtCodelistRef rootItem) {
    this.rootItem = rootItem;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CtCodelistRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CtCodelistRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CtCodelistLinks priorVersion(CtCodelistRef priorVersion) {
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
    CtCodelistLinks ctCodelistLinks = (CtCodelistLinks) o;
    return Objects.equals(this.self, ctCodelistLinks.self) &&
        Objects.equals(this.parentPackage, ctCodelistLinks.parentPackage) &&
        Objects.equals(this.rootItem, ctCodelistLinks.rootItem) &&
        Objects.equals(this.priorVersion, ctCodelistLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentPackage, rootItem, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtCodelistLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentPackage: ").append(toIndentedString(parentPackage)).append("\n");
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

