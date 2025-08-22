package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashDomainFieldRefVersion;
import org.openapitools.model.RootCdashDomainFieldRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCdashDomainFieldLinks  {
  
  @ApiModelProperty(value = "")
  private RootCdashDomainFieldRef self;

  @ApiModelProperty(value = "")
  private List<CdashDomainFieldRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCdashDomainFieldRef getSelf() {
    return self;
  }

  public void setSelf(RootCdashDomainFieldRef self) {
    this.self = self;
  }

  public RootCdashDomainFieldLinks self(RootCdashDomainFieldRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<CdashDomainFieldRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<CdashDomainFieldRefVersion> versions) {
    this.versions = versions;
  }

  public RootCdashDomainFieldLinks versions(List<CdashDomainFieldRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootCdashDomainFieldLinks addVersionsItem(CdashDomainFieldRefVersion versionsItem) {
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
    RootCdashDomainFieldLinks rootCdashDomainFieldLinks = (RootCdashDomainFieldLinks) o;
    return Objects.equals(this.self, rootCdashDomainFieldLinks.self) &&
        Objects.equals(this.versions, rootCdashDomainFieldLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCdashDomainFieldLinks {\n");
    
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

