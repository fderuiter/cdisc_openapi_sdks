package org.openapitools.model;

import org.openapitools.model.CdashigClassScenariosLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigClassScenarios  {
  
  @ApiModelProperty(example = "4", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Findings", value = "")
  private String name;

  @ApiModelProperty(example = "Findings", value = "")
  private String label;

  @ApiModelProperty(example = "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private CdashigClassScenariosLinks links;
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

  public CdashigClassScenarios ordinal(String ordinal) {
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

  public CdashigClassScenarios name(String name) {
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

  public CdashigClassScenarios label(String label) {
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

  public CdashigClassScenarios description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigClassScenariosLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigClassScenariosLinks links) {
    this.links = links;
  }

  public CdashigClassScenarios links(CdashigClassScenariosLinks links) {
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
    CdashigClassScenarios cdashigClassScenarios = (CdashigClassScenarios) o;
    return Objects.equals(this.ordinal, cdashigClassScenarios.ordinal) &&
        Objects.equals(this.name, cdashigClassScenarios.name) &&
        Objects.equals(this.label, cdashigClassScenarios.label) &&
        Objects.equals(this.description, cdashigClassScenarios.description) &&
        Objects.equals(this.links, cdashigClassScenarios.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigClassScenarios {\n");
    
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

