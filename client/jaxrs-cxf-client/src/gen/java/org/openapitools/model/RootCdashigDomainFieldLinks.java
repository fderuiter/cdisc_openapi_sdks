package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigDomainFieldRefVersion;
import org.openapitools.model.RootCdashigDomainFieldRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCdashigDomainFieldLinks  {
  
  @ApiModelProperty(value = "")
  private RootCdashigDomainFieldRef self;

  @ApiModelProperty(value = "")
  private List<CdashigDomainFieldRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCdashigDomainFieldRef getSelf() {
    return self;
  }

  public void setSelf(RootCdashigDomainFieldRef self) {
    this.self = self;
  }

  public RootCdashigDomainFieldLinks self(RootCdashigDomainFieldRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<CdashigDomainFieldRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<CdashigDomainFieldRefVersion> versions) {
    this.versions = versions;
  }

  public RootCdashigDomainFieldLinks versions(List<CdashigDomainFieldRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootCdashigDomainFieldLinks addVersionsItem(CdashigDomainFieldRefVersion versionsItem) {
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
    RootCdashigDomainFieldLinks rootCdashigDomainFieldLinks = (RootCdashigDomainFieldLinks) o;
    return Objects.equals(this.self, rootCdashigDomainFieldLinks.self) &&
        Objects.equals(this.versions, rootCdashigDomainFieldLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCdashigDomainFieldLinks {\n");
    
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

