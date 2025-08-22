package org.openapitools.model;

import org.openapitools.model.AdamVariable;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class XmlAdamVariable  {
  
  @ApiModelProperty(value = "")
  private AdamVariable self;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamVariable getSelf() {
    return self;
  }

  public void setSelf(AdamVariable self) {
    this.self = self;
  }

  public XmlAdamVariable self(AdamVariable self) {
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
    XmlAdamVariable xmlAdamVariable = (XmlAdamVariable) o;
    return Objects.equals(this.self, xmlAdamVariable.self);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class XmlAdamVariable {\n");
    
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

