package org.openapitools.model;

import org.openapitools.model.SdtmProductRef;
import org.openapitools.model.SendigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigProductLinks  {
  
  @ApiModelProperty(value = "")
  private SendigProductRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef model;

  @ApiModelProperty(value = "")
  private SendigProductRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigProductRef getSelf() {
    return self;
  }

  public void setSelf(SendigProductRef self) {
    this.self = self;
  }

  public SendigProductLinks self(SendigProductRef self) {
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

  public SendigProductLinks model(SdtmProductRef model) {
    this.model = model;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SendigProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SendigProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SendigProductLinks priorVersion(SendigProductRef priorVersion) {
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
    SendigProductLinks sendigProductLinks = (SendigProductLinks) o;
    return Objects.equals(this.self, sendigProductLinks.self) &&
        Objects.equals(this.model, sendigProductLinks.model) &&
        Objects.equals(this.priorVersion, sendigProductLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, model, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigProductLinks {\n");
    
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

