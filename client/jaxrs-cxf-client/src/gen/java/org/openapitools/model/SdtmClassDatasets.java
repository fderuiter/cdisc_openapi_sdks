package org.openapitools.model;

import org.openapitools.model.SdtmClassDatasetsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassDatasets  {
  
  @ApiModelProperty(example = "6", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Special-Purpose", value = "")
  private String name;

  @ApiModelProperty(example = "Special-Purpose Datasets", value = "")
  private String label;

  @ApiModelProperty(example = "This SDTM class contains a set of domains which do not conform to the Findings, Events or Interventions observation classes. The domains included are DM, CO, SE and SV. (Source: CDISC Controlled Terminology, GNRLOBSC, C103377, 2018-06-29)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private SdtmClassDatasetsLinks links;
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

  public SdtmClassDatasets ordinal(String ordinal) {
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

  public SdtmClassDatasets name(String name) {
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

  public SdtmClassDatasets label(String label) {
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

  public SdtmClassDatasets description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmClassDatasetsLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmClassDatasetsLinks links) {
    this.links = links;
  }

  public SdtmClassDatasets links(SdtmClassDatasetsLinks links) {
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
    SdtmClassDatasets sdtmClassDatasets = (SdtmClassDatasets) o;
    return Objects.equals(this.ordinal, sdtmClassDatasets.ordinal) &&
        Objects.equals(this.name, sdtmClassDatasets.name) &&
        Objects.equals(this.label, sdtmClassDatasets.label) &&
        Objects.equals(this.description, sdtmClassDatasets.description) &&
        Objects.equals(this.links, sdtmClassDatasets.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassDatasets {\n");
    
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

