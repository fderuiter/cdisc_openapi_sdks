package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootSdtmigDatasetVariableRef;
import org.openapitools.model.SdtmigDatasetVariableRefVersion;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootSdtmigDatasetVariableLinks  {
  
  @ApiModelProperty(value = "")
  private RootSdtmigDatasetVariableRef self;

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetVariableRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootSdtmigDatasetVariableRef getSelf() {
    return self;
  }

  public void setSelf(RootSdtmigDatasetVariableRef self) {
    this.self = self;
  }

  public RootSdtmigDatasetVariableLinks self(RootSdtmigDatasetVariableRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<SdtmigDatasetVariableRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<SdtmigDatasetVariableRefVersion> versions) {
    this.versions = versions;
  }

  public RootSdtmigDatasetVariableLinks versions(List<SdtmigDatasetVariableRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootSdtmigDatasetVariableLinks addVersionsItem(SdtmigDatasetVariableRefVersion versionsItem) {
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
    RootSdtmigDatasetVariableLinks rootSdtmigDatasetVariableLinks = (RootSdtmigDatasetVariableLinks) o;
    return Objects.equals(this.self, rootSdtmigDatasetVariableLinks.self) &&
        Objects.equals(this.versions, rootSdtmigDatasetVariableLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootSdtmigDatasetVariableLinks {\n");
    
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

