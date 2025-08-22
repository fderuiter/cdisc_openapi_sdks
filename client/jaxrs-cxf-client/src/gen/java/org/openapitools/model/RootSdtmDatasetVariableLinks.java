package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootSdtmDatasetVariableRef;
import org.openapitools.model.SdtmDatasetVariableRefVersion;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootSdtmDatasetVariableLinks  {
  
  @ApiModelProperty(value = "")
  private RootSdtmDatasetVariableRef self;

  @ApiModelProperty(value = "")
  private List<SdtmDatasetVariableRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootSdtmDatasetVariableRef getSelf() {
    return self;
  }

  public void setSelf(RootSdtmDatasetVariableRef self) {
    this.self = self;
  }

  public RootSdtmDatasetVariableLinks self(RootSdtmDatasetVariableRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<SdtmDatasetVariableRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<SdtmDatasetVariableRefVersion> versions) {
    this.versions = versions;
  }

  public RootSdtmDatasetVariableLinks versions(List<SdtmDatasetVariableRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootSdtmDatasetVariableLinks addVersionsItem(SdtmDatasetVariableRefVersion versionsItem) {
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
    RootSdtmDatasetVariableLinks rootSdtmDatasetVariableLinks = (RootSdtmDatasetVariableLinks) o;
    return Objects.equals(this.self, rootSdtmDatasetVariableLinks.self) &&
        Objects.equals(this.versions, rootSdtmDatasetVariableLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootSdtmDatasetVariableLinks {\n");
    
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

