package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtTermRefVersion;
import org.openapitools.model.RootCtTermRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCtTermLinks  {
  
  @ApiModelProperty(value = "")
  private RootCtTermRef self;

  @ApiModelProperty(value = "")
  private List<CtTermRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCtTermRef getSelf() {
    return self;
  }

  public void setSelf(RootCtTermRef self) {
    this.self = self;
  }

  public RootCtTermLinks self(RootCtTermRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<CtTermRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<CtTermRefVersion> versions) {
    this.versions = versions;
  }

  public RootCtTermLinks versions(List<CtTermRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootCtTermLinks addVersionsItem(CtTermRefVersion versionsItem) {
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
    RootCtTermLinks rootCtTermLinks = (RootCtTermLinks) o;
    return Objects.equals(this.self, rootCtTermLinks.self) &&
        Objects.equals(this.versions, rootCtTermLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCtTermLinks {\n");
    
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

