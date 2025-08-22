package org.openapitools.model;

import org.openapitools.model.CdashProductRef;
import org.openapitools.model.CdashigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigProductLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigProductRef self;

  @ApiModelProperty(value = "")
  private CdashProductRef model;

  @ApiModelProperty(value = "")
  private CdashigProductRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigProductRef getSelf() {
    return self;
  }

  public void setSelf(CdashigProductRef self) {
    this.self = self;
  }

  public CdashigProductLinks self(CdashigProductRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get model
   * @return model
  **/
  @JsonProperty("model")
  public CdashProductRef getModel() {
    return model;
  }

  public void setModel(CdashProductRef model) {
    this.model = model;
  }

  public CdashigProductLinks model(CdashProductRef model) {
    this.model = model;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CdashigProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CdashigProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CdashigProductLinks priorVersion(CdashigProductRef priorVersion) {
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
    CdashigProductLinks cdashigProductLinks = (CdashigProductLinks) o;
    return Objects.equals(this.self, cdashigProductLinks.self) &&
        Objects.equals(this.model, cdashigProductLinks.model) &&
        Objects.equals(this.priorVersion, cdashigProductLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, model, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigProductLinks {\n");
    
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

