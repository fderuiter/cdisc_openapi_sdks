package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtCodelistRefVersion;
import org.openapitools.model.RootCtCodelistRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCtCodelistLinks  {
  
  @ApiModelProperty(value = "")
  private RootCtCodelistRef self;

  @ApiModelProperty(value = "")
  private List<CtCodelistRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCtCodelistRef getSelf() {
    return self;
  }

  public void setSelf(RootCtCodelistRef self) {
    this.self = self;
  }

  public RootCtCodelistLinks self(RootCtCodelistRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<CtCodelistRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<CtCodelistRefVersion> versions) {
    this.versions = versions;
  }

  public RootCtCodelistLinks versions(List<CtCodelistRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootCtCodelistLinks addVersionsItem(CtCodelistRefVersion versionsItem) {
    this.versions.add(versionsItem);
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
    RootCtCodelistLinks rootCtCodelistLinks = (RootCtCodelistLinks) o;
    return Objects.equals(this.self, rootCtCodelistLinks.self) &&
        Objects.equals(this.versions, rootCtCodelistLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCtCodelistLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    versions: ").append(toIndentedString(versions)).append("\n");
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

