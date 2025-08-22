package org.openapitools.model;

import org.openapitools.model.CdashProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashProductLinks  {
  
  @ApiModelProperty(value = "")
  private CdashProductRef self;

  @ApiModelProperty(value = "")
  private CdashProductRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashProductRef getSelf() {
    return self;
  }

  public void setSelf(CdashProductRef self) {
    this.self = self;
  }

  public CdashProductLinks self(CdashProductRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashProductLinks priorVersion(CdashProductRef priorVersion) {
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
    CdashProductLinks cdashProductLinks = (CdashProductLinks) o;
    return Objects.equals(this.self, cdashProductLinks.self) &&
        Objects.equals(this.priorVersion, cdashProductLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashProductLinks {\n");
    
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

