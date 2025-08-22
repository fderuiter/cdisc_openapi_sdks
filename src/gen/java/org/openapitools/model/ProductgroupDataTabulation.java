package org.openapitools.model;

import org.openapitools.model.ProductgroupDataTabulationLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductgroupDataTabulation  {
  
  @ApiModelProperty(value = "")
  private ProductgroupDataTabulationLinks links;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public ProductgroupDataTabulationLinks getLinks() {
    return links;
  }

  public void setLinks(ProductgroupDataTabulationLinks links) {
    this.links = links;
  }

  public ProductgroupDataTabulation links(ProductgroupDataTabulationLinks links) {
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
    ProductgroupDataTabulation productgroupDataTabulation = (ProductgroupDataTabulation) o;
    return Objects.equals(this.links, productgroupDataTabulation.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductgroupDataTabulation {\n");
    
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

