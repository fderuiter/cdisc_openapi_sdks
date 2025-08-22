package org.openapitools.model;

import org.openapitools.model.RootCdashClassField;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class XmlRootCdashClassField  {
  
  @ApiModelProperty(value = "")
  private RootCdashClassField self;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public RootCdashClassField getSelf() {
    return self;
  }

  public void setSelf(RootCdashClassField self) {
    this.self = self;
  }

  public XmlRootCdashClassField self(RootCdashClassField self) {
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
    XmlRootCdashClassField xmlRootCdashClassField = (XmlRootCdashClassField) o;
    return Objects.equals(this.self, xmlRootCdashClassField.self);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class XmlRootCdashClassField {\n");
    
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

