package org.openapitools.model;

import org.openapitools.model.RootSdtmDatasetVariableLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootSdtmDatasetVariable  {
  
  @ApiModelProperty(value = "")
  private RootSdtmDatasetVariableLinks links;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public RootSdtmDatasetVariableLinks getLinks() {
    return links;
  }

  public void setLinks(RootSdtmDatasetVariableLinks links) {
    this.links = links;
  }

  public RootSdtmDatasetVariable links(RootSdtmDatasetVariableLinks links) {
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
    RootSdtmDatasetVariable rootSdtmDatasetVariable = (RootSdtmDatasetVariable) o;
    return Objects.equals(this.links, rootSdtmDatasetVariable.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootSdtmDatasetVariable {\n");
    
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

