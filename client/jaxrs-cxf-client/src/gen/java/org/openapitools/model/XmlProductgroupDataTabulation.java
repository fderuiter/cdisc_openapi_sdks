package org.openapitools.model;

import org.openapitools.model.ProductgroupDataTabulation;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class XmlProductgroupDataTabulation  {
  
  @ApiModelProperty(value = "")
  private ProductgroupDataTabulation self;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public ProductgroupDataTabulation getSelf() {
    return self;
  }

  public void setSelf(ProductgroupDataTabulation self) {
    this.self = self;
  }

  public XmlProductgroupDataTabulation self(ProductgroupDataTabulation self) {
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
    XmlProductgroupDataTabulation xmlProductgroupDataTabulation = (XmlProductgroupDataTabulation) o;
    return Objects.equals(this.self, xmlProductgroupDataTabulation.self);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class XmlProductgroupDataTabulation {\n");
    
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

