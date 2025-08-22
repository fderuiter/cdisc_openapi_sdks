package org.openapitools.model;

import org.openapitools.model.SendigClassDatasetsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigClassDatasets  {
  
  @ApiModelProperty(example = "5", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Findings", value = "")
  private String name;

  @ApiModelProperty(example = "Findings Observation Class", value = "")
  private String label;

  @ApiModelProperty(example = "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private SendigClassDatasetsLinks links;
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

  public SendigClassDatasets ordinal(String ordinal) {
    this.ordinal = ordinal;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public SendigClassDatasets name(String name) {
    this.name = name;
    return this;
  }

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

  public SendigClassDatasets label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public SendigClassDatasets description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SendigClassDatasetsLinks getLinks() {
    return links;
  }

  public void setLinks(SendigClassDatasetsLinks links) {
    this.links = links;
  }

  public SendigClassDatasets links(SendigClassDatasetsLinks links) {
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
    SendigClassDatasets sendigClassDatasets = (SendigClassDatasets) o;
    return Objects.equals(this.ordinal, sendigClassDatasets.ordinal) &&
        Objects.equals(this.name, sendigClassDatasets.name) &&
        Objects.equals(this.label, sendigClassDatasets.label) &&
        Objects.equals(this.description, sendigClassDatasets.description) &&
        Objects.equals(this.links, sendigClassDatasets.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigClassDatasets {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
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

