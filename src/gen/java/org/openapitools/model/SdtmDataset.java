package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmDatasetLinks;
import org.openapitools.model.SdtmDatasetVariable;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmDataset  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(example = "DM", value = "")
  private String name;

  @ApiModelProperty(example = "Demographics", value = "")
  private String label;

  @ApiModelProperty(example = "A special-purpose domain that includes a set of essential standard variables that describe each subject in a clinical study. It is the parent domain for all other observations for human clinical subjects. (Source: CDISC Controlled Terminology, DOMAIN, C49572, 2018-06-29)", value = "")
  private String description;

  @ApiModelProperty(example = "One record per subject", value = "")
  private String datasetStructure;

  @ApiModelProperty(value = "")
  private SdtmDatasetLinks links;

  @ApiModelProperty(value = "")
  private List<SdtmDatasetVariable> datasetVariables = new ArrayList<>();
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

  public SdtmDataset ordinal(String ordinal) {
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

  public SdtmDataset name(String name) {
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

  public SdtmDataset label(String label) {
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

  public SdtmDataset description(String description) {
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

  public SdtmDataset datasetStructure(String datasetStructure) {
    this.datasetStructure = datasetStructure;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmDatasetLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmDatasetLinks links) {
    this.links = links;
  }

  public SdtmDataset links(SdtmDatasetLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get datasetVariables
   * @return datasetVariables
  **/
  @JsonProperty("datasetVariables")
  public List<SdtmDatasetVariable> getDatasetVariables() {
    return datasetVariables;
  }

  public void setDatasetVariables(List<SdtmDatasetVariable> datasetVariables) {
    this.datasetVariables = datasetVariables;
  }

  public SdtmDataset datasetVariables(List<SdtmDatasetVariable> datasetVariables) {
    this.datasetVariables = datasetVariables;
    return this;
  }

  public SdtmDataset addDatasetVariablesItem(SdtmDatasetVariable datasetVariablesItem) {
    this.datasetVariables.add(datasetVariablesItem);
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
    SdtmDataset sdtmDataset = (SdtmDataset) o;
    return Objects.equals(this.ordinal, sdtmDataset.ordinal) &&
        Objects.equals(this.name, sdtmDataset.name) &&
        Objects.equals(this.label, sdtmDataset.label) &&
        Objects.equals(this.description, sdtmDataset.description) &&
        Objects.equals(this.datasetStructure, sdtmDataset.datasetStructure) &&
        Objects.equals(this.links, sdtmDataset.links) &&
        Objects.equals(this.datasetVariables, sdtmDataset.datasetVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, datasetStructure, links, datasetVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmDataset {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    datasetStructure: ").append(toIndentedString(datasetStructure)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    datasetVariables: ").append(toIndentedString(datasetVariables)).append("\n");
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

