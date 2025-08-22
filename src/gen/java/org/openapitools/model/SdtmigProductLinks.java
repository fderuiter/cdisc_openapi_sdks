package org.openapitools.model;

import org.openapitools.model.SdtmProductRef;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigProductLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigProductRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef model;

  @ApiModelProperty(value = "")
  private SdtmigProductRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigProductRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigProductRef self) {
    this.self = self;
  }

  public SdtmigProductLinks self(SdtmigProductRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get model
   * @return model
  **/
  @JsonProperty("model")
  public SdtmProductRef getModel() {
    return model;
  }

  public void setModel(SdtmProductRef model) {
    this.model = model;
  }

  public SdtmigProductLinks model(SdtmProductRef model) {
    this.model = model;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigProductLinks priorVersion(SdtmigProductRef priorVersion) {
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
    SdtmigProductLinks sdtmigProductLinks = (SdtmigProductLinks) o;
    return Objects.equals(this.self, sdtmigProductLinks.self) &&
        Objects.equals(this.model, sdtmigProductLinks.model) &&
        Objects.equals(this.priorVersion, sdtmigProductLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, model, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigProductLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    model: ").append(toIndentedString(model)).append("\n");
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

