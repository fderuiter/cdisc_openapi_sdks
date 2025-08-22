package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassFieldRefVersion;
import org.openapitools.model.RootCdashClassFieldRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCdashClassFieldLinks  {
  
  @ApiModelProperty(value = "")
  private RootCdashClassFieldRef self;

  @ApiModelProperty(value = "")
  private List<CdashClassFieldRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCdashClassFieldRef getSelf() {
    return self;
  }

  public void setSelf(RootCdashClassFieldRef self) {
    this.self = self;
  }

  public RootCdashClassFieldLinks self(RootCdashClassFieldRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<CdashClassFieldRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<CdashClassFieldRefVersion> versions) {
    this.versions = versions;
  }

  public RootCdashClassFieldLinks versions(List<CdashClassFieldRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootCdashClassFieldLinks addVersionsItem(CdashClassFieldRefVersion versionsItem) {
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
    RootCdashClassFieldLinks rootCdashClassFieldLinks = (RootCdashClassFieldLinks) o;
    return Objects.equals(this.self, rootCdashClassFieldLinks.self) &&
        Objects.equals(this.versions, rootCdashClassFieldLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCdashClassFieldLinks {\n");
    
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

