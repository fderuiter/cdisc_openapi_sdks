package org.openapitools.model;

import org.openapitools.model.QrsResponsegroupLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsResponsegroup  {
  
  @ApiModelProperty(example = "01 to 08", value = "")
  private String label;

  @ApiModelProperty(value = "")
  private QrsResponsegroupLinks links;
 /**
   * Get label
   * @return label
  **/
  @JsonProperty("label")
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public QrsResponsegroup label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public QrsResponsegroupLinks getLinks() {
    return links;
  }

  public void setLinks(QrsResponsegroupLinks links) {
    this.links = links;
  }

  public QrsResponsegroup links(QrsResponsegroupLinks links) {
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
    QrsResponsegroup qrsResponsegroup = (QrsResponsegroup) o;
    return Objects.equals(this.label, qrsResponsegroup.label) &&
        Objects.equals(this.links, qrsResponsegroup.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(label, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsResponsegroup {\n");
    
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
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

