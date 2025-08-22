package org.openapitools.model;

import org.openapitools.model.SdtmClassVariablesLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassVariables  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(example = "General Observations", value = "")
  private String name;

  @ApiModelProperty(example = "General Observation Class", value = "")
  private String label;

  @ApiModelProperty(example = "The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private SdtmClassVariablesLinks links;
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

  public SdtmClassVariables ordinal(String ordinal) {
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

  public SdtmClassVariables name(String name) {
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

  public SdtmClassVariables label(String label) {
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

  public SdtmClassVariables description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmClassVariablesLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmClassVariablesLinks links) {
    this.links = links;
  }

  public SdtmClassVariables links(SdtmClassVariablesLinks links) {
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
    SdtmClassVariables sdtmClassVariables = (SdtmClassVariables) o;
    return Objects.equals(this.ordinal, sdtmClassVariables.ordinal) &&
        Objects.equals(this.name, sdtmClassVariables.name) &&
        Objects.equals(this.label, sdtmClassVariables.label) &&
        Objects.equals(this.description, sdtmClassVariables.description) &&
        Objects.equals(this.links, sdtmClassVariables.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassVariables {\n");
    
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

