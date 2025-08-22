package org.openapitools.model;

import org.openapitools.model.QrsResponseLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsResponses  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(value = "")
  private QrsResponseLinks links;
 /**
   * Get ordinal
   * @return ordinal
  **/
  @JsonProperty("ordinal")
  public String getOrdinal() {
    return ordinal;
  }

  public void setOrdinal(String ordinal) {
    this.ordinal = ordinal;
  }

  public QrsResponses ordinal(String ordinal) {
    this.ordinal = ordinal;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public QrsResponseLinks getLinks() {
    return links;
  }

  public void setLinks(QrsResponseLinks links) {
    this.links = links;
  }

  public QrsResponses links(QrsResponseLinks links) {
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
    QrsResponses qrsResponses = (QrsResponses) o;
    return Objects.equals(this.ordinal, qrsResponses.ordinal) &&
        Objects.equals(this.links, qrsResponses.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsResponses {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
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

