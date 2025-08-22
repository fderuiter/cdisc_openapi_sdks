package org.openapitools.model;

import org.openapitools.model.SendigDatasetVariablesLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigDatasetVariables  {
  
  @ApiModelProperty(example = "20", value = "")
  private String ordinal;

  @ApiModelProperty(example = "VS", value = "")
  private String name;

  @ApiModelProperty(example = "Vital Signs", value = "")
  private String label;

  @ApiModelProperty(example = "A findings domain that contains measurements including but not limited to blood pressure, temperature, respiration, body surface area, body mass index, height and weight. (Source: CDISC Controlled Terminology, SDOMAIN, C49622, 2018-06-29)", value = "")
  private String description;

  @ApiModelProperty(example = "One record per measurement per observation time per subject", value = "")
  private String datasetStructure;

  @ApiModelProperty(value = "")
  private SendigDatasetVariablesLinks links;
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

  public SendigDatasetVariables ordinal(String ordinal) {
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

  public SendigDatasetVariables name(String name) {
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

  public SendigDatasetVariables label(String label) {
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

  public SendigDatasetVariables description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get datasetStructure
   * @return datasetStructure
  **/
  @JsonProperty("datasetStructure")
  public String getDatasetStructure() {
    return datasetStructure;
  }

  public void setDatasetStructure(String datasetStructure) {
    this.datasetStructure = datasetStructure;
  }

  public SendigDatasetVariables datasetStructure(String datasetStructure) {
    this.datasetStructure = datasetStructure;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SendigDatasetVariablesLinks getLinks() {
    return links;
  }

  public void setLinks(SendigDatasetVariablesLinks links) {
    this.links = links;
  }

  public SendigDatasetVariables links(SendigDatasetVariablesLinks links) {
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
    SendigDatasetVariables sendigDatasetVariables = (SendigDatasetVariables) o;
    return Objects.equals(this.ordinal, sendigDatasetVariables.ordinal) &&
        Objects.equals(this.name, sendigDatasetVariables.name) &&
        Objects.equals(this.label, sendigDatasetVariables.label) &&
        Objects.equals(this.description, sendigDatasetVariables.description) &&
        Objects.equals(this.datasetStructure, sendigDatasetVariables.datasetStructure) &&
        Objects.equals(this.links, sendigDatasetVariables.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, datasetStructure, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigDatasetVariables {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    datasetStructure: ").append(toIndentedString(datasetStructure)).append("\n");
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

