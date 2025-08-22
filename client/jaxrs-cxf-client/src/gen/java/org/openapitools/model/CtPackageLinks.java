package org.openapitools.model;

import org.openapitools.model.CtPackageRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackageLinks  {
  
  @ApiModelProperty(value = "")
  private CtPackageRef self;

  @ApiModelProperty(value = "")
  private CtPackageRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CtPackageRef getSelf() {
    return self;
  }

  public void setSelf(CtPackageRef self) {
    this.self = self;
  }

  public CtPackageLinks self(CtPackageRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CtPackageRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CtPackageRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CtPackageLinks priorVersion(CtPackageRef priorVersion) {
    this.priorVersion = priorVersion;
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
    CtPackageLinks ctPackageLinks = (CtPackageLinks) o;
    return Objects.equals(this.self, ctPackageLinks.self) &&
        Objects.equals(this.priorVersion, ctPackageLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackageLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
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

