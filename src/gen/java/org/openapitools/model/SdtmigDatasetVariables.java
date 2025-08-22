package org.openapitools.model;

import org.openapitools.model.SdtmigDatasetVariablesLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetVariables  {
  
  @ApiModelProperty(example = "24", value = "")
  private String ordinal;

  @ApiModelProperty(example = "LB", value = "")
  private String name;

  @ApiModelProperty(example = "Laboratory Test Results", value = "")
  private String label;

  @ApiModelProperty(example = "A findings domain that contains laboratory test data such as hematology, clinical chemistry and urinalysis. This domain does not include microbiology or pharmacokinetic data, which are stored in separate domains. (Source: CDISC Controlled Terminology, DOMAIN, C49592, 2018-06-29)", value = "")
  private String description;

  @ApiModelProperty(example = "One record per lab test per time point per visit per subject", value = "")
  private String datasetStructure;

  @ApiModelProperty(value = "")
  private SdtmigDatasetVariablesLinks links;
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

  public SdtmigDatasetVariables ordinal(String ordinal) {
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

  public SdtmigDatasetVariables name(String name) {
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

  public SdtmigDatasetVariables label(String label) {
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

  public SdtmigDatasetVariables description(String description) {
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

  public SdtmigDatasetVariables datasetStructure(String datasetStructure) {
    this.datasetStructure = datasetStructure;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmigDatasetVariablesLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmigDatasetVariablesLinks links) {
    this.links = links;
  }

  public SdtmigDatasetVariables links(SdtmigDatasetVariablesLinks links) {
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
    SdtmigDatasetVariables sdtmigDatasetVariables = (SdtmigDatasetVariables) o;
    return Objects.equals(this.ordinal, sdtmigDatasetVariables.ordinal) &&
        Objects.equals(this.name, sdtmigDatasetVariables.name) &&
        Objects.equals(this.label, sdtmigDatasetVariables.label) &&
        Objects.equals(this.description, sdtmigDatasetVariables.description) &&
        Objects.equals(this.datasetStructure, sdtmigDatasetVariables.datasetStructure) &&
        Objects.equals(this.links, sdtmigDatasetVariables.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, datasetStructure, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetVariables {\n");
    
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

