package org.openapitools.model;

import org.openapitools.model.AdamDatastructureVariablesLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamDatastructureVariables  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(example = "ADSL", value = "")
  private String name;

  @ApiModelProperty(example = "Subject-Level Analysis Dataset Structure", value = "")
  private String label;

  @ApiModelProperty(example = "One record per subject.", value = "")
  private String description;

  @ApiModelProperty(example = "ADSL", value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private AdamDatastructureVariablesLinks links;
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

  public AdamDatastructureVariables ordinal(String ordinal) {
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

  public AdamDatastructureVariables name(String name) {
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

  public AdamDatastructureVariables label(String label) {
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

  public AdamDatastructureVariables description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public AdamDatastructureVariables propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public AdamDatastructureVariablesLinks getLinks() {
    return links;
  }

  public void setLinks(AdamDatastructureVariablesLinks links) {
    this.links = links;
  }

  public AdamDatastructureVariables links(AdamDatastructureVariablesLinks links) {
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
    AdamDatastructureVariables adamDatastructureVariables = (AdamDatastructureVariables) o;
    return Objects.equals(this.ordinal, adamDatastructureVariables.ordinal) &&
        Objects.equals(this.name, adamDatastructureVariables.name) &&
        Objects.equals(this.label, adamDatastructureVariables.label) &&
        Objects.equals(this.description, adamDatastructureVariables.description) &&
        Objects.equals(this.propertyClass, adamDatastructureVariables.propertyClass) &&
        Objects.equals(this.links, adamDatastructureVariables.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, propertyClass, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamDatastructureVariables {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

