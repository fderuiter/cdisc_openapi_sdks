package org.openapitools.model;

import org.openapitools.model.CdashigProductClasses;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class XmlCdashigProductClasses  {
  
  @ApiModelProperty(value = "")
  private CdashigProductClasses self;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigProductClasses getSelf() {
    return self;
  }

  public void setSelf(CdashigProductClasses self) {
    this.self = self;
  }

  public XmlCdashigProductClasses self(CdashigProductClasses self) {
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
    XmlCdashigProductClasses xmlCdashigProductClasses = (XmlCdashigProductClasses) o;
    return Objects.equals(this.self, xmlCdashigProductClasses.self);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class XmlCdashigProductClasses {\n");
    
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

