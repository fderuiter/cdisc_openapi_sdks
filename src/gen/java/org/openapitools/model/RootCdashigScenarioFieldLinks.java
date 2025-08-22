package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigScenarioFieldRefVersion;
import org.openapitools.model.RootCdashigScenarioFieldRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCdashigScenarioFieldLinks  {
  
  @ApiModelProperty(value = "")
  private RootCdashigScenarioFieldRef self;

  @ApiModelProperty(value = "")
  private List<CdashigScenarioFieldRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCdashigScenarioFieldRef getSelf() {
    return self;
  }

  public void setSelf(RootCdashigScenarioFieldRef self) {
    this.self = self;
  }

  public RootCdashigScenarioFieldLinks self(RootCdashigScenarioFieldRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<CdashigScenarioFieldRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<CdashigScenarioFieldRefVersion> versions) {
    this.versions = versions;
  }

  public RootCdashigScenarioFieldLinks versions(List<CdashigScenarioFieldRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootCdashigScenarioFieldLinks addVersionsItem(CdashigScenarioFieldRefVersion versionsItem) {
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
    RootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks = (RootCdashigScenarioFieldLinks) o;
    return Objects.equals(this.self, rootCdashigScenarioFieldLinks.self) &&
        Objects.equals(this.versions, rootCdashigScenarioFieldLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCdashigScenarioFieldLinks {\n");
    
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

