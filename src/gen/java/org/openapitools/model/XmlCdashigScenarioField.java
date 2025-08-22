package org.openapitools.model;

import org.openapitools.model.CdashigScenarioField;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class XmlCdashigScenarioField  {
  
  @ApiModelProperty(value = "")
  private CdashigScenarioField self;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigScenarioField getSelf() {
    return self;
  }

  public void setSelf(CdashigScenarioField self) {
    this.self = self;
  }

  public XmlCdashigScenarioField self(CdashigScenarioField self) {
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
    XmlCdashigScenarioField xmlCdashigScenarioField = (XmlCdashigScenarioField) o;
    return Objects.equals(this.self, xmlCdashigScenarioField.self);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class XmlCdashigScenarioField {\n");
    
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

