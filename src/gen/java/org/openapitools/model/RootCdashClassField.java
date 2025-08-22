package org.openapitools.model;

import org.openapitools.model.RootCdashClassFieldLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCdashClassField  {
  
  @ApiModelProperty(value = "")
  private RootCdashClassFieldLinks links;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public RootCdashClassFieldLinks getLinks() {
    return links;
  }

  public void setLinks(RootCdashClassFieldLinks links) {
    this.links = links;
  }

  public RootCdashClassField links(RootCdashClassFieldLinks links) {
    this.links = links;
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
    RootCdashClassField rootCdashClassField = (RootCdashClassField) o;
    return Objects.equals(this.links, rootCdashClassField.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCdashClassField {\n");
    
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

