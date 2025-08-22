package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RootSendigDatasetVariableRef;
import org.openapitools.model.SendigDatasetVariableRefVersion;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootSendigDatasetVariableLinks  {
  
  @ApiModelProperty(value = "")
  private RootSendigDatasetVariableRef self;

  @ApiModelProperty(value = "")
  private List<SendigDatasetVariableRefVersion> versions = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootSendigDatasetVariableRef getSelf() {
    return self;
  }

  public void setSelf(RootSendigDatasetVariableRef self) {
    this.self = self;
  }

  public RootSendigDatasetVariableLinks self(RootSendigDatasetVariableRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get versions
   * @return versions
  **/
  @JsonProperty("versions")
  public List<SendigDatasetVariableRefVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<SendigDatasetVariableRefVersion> versions) {
    this.versions = versions;
  }

  public RootSendigDatasetVariableLinks versions(List<SendigDatasetVariableRefVersion> versions) {
    this.versions = versions;
    return this;
  }

  public RootSendigDatasetVariableLinks addVersionsItem(SendigDatasetVariableRefVersion versionsItem) {
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
    RootSendigDatasetVariableLinks rootSendigDatasetVariableLinks = (RootSendigDatasetVariableLinks) o;
    return Objects.equals(this.self, rootSendigDatasetVariableLinks.self) &&
        Objects.equals(this.versions, rootSendigDatasetVariableLinks.versions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, versions);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootSendigDatasetVariableLinks {\n");
    
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

