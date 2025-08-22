package org.openapitools.model;

import org.openapitools.model.CtPackagesLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackages  {
  
  @ApiModelProperty(value = "")
  private CtPackagesLinks links;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CtPackagesLinks getLinks() {
    return links;
  }

  public void setLinks(CtPackagesLinks links) {
    this.links = links;
  }

  public CtPackages links(CtPackagesLinks links) {
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
    CtPackages ctPackages = (CtPackages) o;
    return Objects.equals(this.links, ctPackages.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackages {\n");
    
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

