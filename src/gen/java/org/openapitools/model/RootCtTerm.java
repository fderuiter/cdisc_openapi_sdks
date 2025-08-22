package org.openapitools.model;

import org.openapitools.model.RootCtTermLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCtTerm  {
  
  @ApiModelProperty(value = "")
  private RootCtTermLinks links;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public RootCtTermLinks getLinks() {
    return links;
  }

  public void setLinks(RootCtTermLinks links) {
    this.links = links;
  }

  public RootCtTerm links(RootCtTermLinks links) {
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
    RootCtTerm rootCtTerm = (RootCtTerm) o;
    return Objects.equals(this.links, rootCtTerm.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCtTerm {\n");
    
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

