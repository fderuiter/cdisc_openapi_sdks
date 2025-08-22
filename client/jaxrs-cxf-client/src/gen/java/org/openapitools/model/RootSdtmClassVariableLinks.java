package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootSdtmClassVariableRef;
import org.openapitools.model.SdtmClassVariableRefVersion;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootSdtmClassVariableLinks  {
  
  @ApiModelProperty(value = "")
  private RootSdtmClassVariableRef self;

  @ApiModelProperty(value = "")
  private List<SdtmClassVariableRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootSdtmClassVariableRef getSelf() {
    return self;
  }

  public void setSelf(RootSdtmClassVariableRef self) {
    this.self = self;
  }

  public RootSdtmClassVariableLinks self(RootSdtmClassVariableRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<SdtmClassVariableRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<SdtmClassVariableRefVersion> versions) {
    this.versions = versions;
  }

  public RootSdtmClassVariableLinks versions(List<SdtmClassVariableRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootSdtmClassVariableLinks addVersionsItem(SdtmClassVariableRefVersion versionsItem) {
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
    RootSdtmClassVariableLinks rootSdtmClassVariableLinks = (RootSdtmClassVariableLinks) o;
    return Objects.equals(this.self, rootSdtmClassVariableLinks.self) &&
        Objects.equals(this.versions, rootSdtmClassVariableLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootSdtmClassVariableLinks {\n");
    
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

