package org.openapitools.model;

import org.openapitools.model.AdamProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamProductLinks  {
  
  @ApiModelProperty(value = "")
  private AdamProductRef self;

  @ApiModelProperty(value = "")
  private AdamProductRef model;

  @ApiModelProperty(value = "")
  private AdamProductRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamProductRef getSelf() {
    return self;
  }

  public void setSelf(AdamProductRef self) {
    this.self = self;
  }

  public AdamProductLinks self(AdamProductRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get model
   * @return model
  **/
  @JsonProperty("model")
  public AdamProductRef getModel() {
    return model;
  }

  public void setModel(AdamProductRef model) {
    this.model = model;
  }

  public AdamProductLinks model(AdamProductRef model) {
    this.model = model;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamProductLinks priorVersion(AdamProductRef priorVersion) {
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
    AdamProductLinks adamProductLinks = (AdamProductLinks) o;
    return Objects.equals(this.self, adamProductLinks.self) &&
        Objects.equals(this.model, adamProductLinks.model) &&
        Objects.equals(this.priorVersion, adamProductLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, model, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamProductLinks {\n");
    
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

