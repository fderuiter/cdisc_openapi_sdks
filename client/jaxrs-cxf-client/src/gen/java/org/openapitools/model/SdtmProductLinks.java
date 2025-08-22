package org.openapitools.model;

import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmProductLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmProductRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmProductRef getSelf() {
    return self;
  }

  public void setSelf(SdtmProductRef self) {
    this.self = self;
  }

  public SdtmProductLinks self(SdtmProductRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmProductLinks priorVersion(SdtmProductRef priorVersion) {
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
    SdtmProductLinks sdtmProductLinks = (SdtmProductLinks) o;
    return Objects.equals(this.self, sdtmProductLinks.self) &&
        Objects.equals(this.priorVersion, sdtmProductLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmProductLinks {\n");
    
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

