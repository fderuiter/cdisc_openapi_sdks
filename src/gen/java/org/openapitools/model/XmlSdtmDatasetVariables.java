package org.openapitools.model;

import org.openapitools.model.SdtmDatasetVariables;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class XmlSdtmDatasetVariables  {
  
  @ApiModelProperty(value = "")
  private SdtmDatasetVariables self;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmDatasetVariables getSelf() {
    return self;
  }

  public void setSelf(SdtmDatasetVariables self) {
    this.self = self;
  }

  public XmlSdtmDatasetVariables self(SdtmDatasetVariables self) {
    this.self = self;
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
    XmlSdtmDatasetVariables xmlSdtmDatasetVariables = (XmlSdtmDatasetVariables) o;
    return Objects.equals(this.self, xmlSdtmDatasetVariables.self);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class XmlSdtmDatasetVariables {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

