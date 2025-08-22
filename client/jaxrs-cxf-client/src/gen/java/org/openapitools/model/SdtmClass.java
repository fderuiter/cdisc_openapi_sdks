package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassLinks;
import org.openapitools.model.SdtmClassVariable;
import org.openapitools.model.SdtmDataset;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClass  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(example = "General Observations", value = "")
  private String name;

  @ApiModelProperty(example = "General Observation Class", value = "")
  private String label;

  @ApiModelProperty(example = "The majority of observations collected during a study can be divided among three general classes: Interventions, Events, or Findings.  Datasets based on any of the general observation classes share a set of common Identifier and Timing variables. As a general rule, any valid Identifier or Timing variable is permissible for use in any submission dataset based on a general observation class. (Source: SDTM v1.8, Section 2.2)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private SdtmClassLinks links;

  @ApiModelProperty(value = "")
  private List<SdtmClassVariable> classVariables = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SdtmDataset> datasets = new ArrayList<>();
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

  public SdtmClass ordinal(String ordinal) {
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

  public SdtmClass name(String name) {
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

  public SdtmClass label(String label) {
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

  public SdtmClass description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmClassLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmClassLinks links) {
    this.links = links;
  }

  public SdtmClass links(SdtmClassLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get classVariables
   * @return classVariables
  **/
  @JsonProperty("classVariables")
  public List<SdtmClassVariable> getClassVariables() {
    return classVariables;
  }

  public void setClassVariables(List<SdtmClassVariable> classVariables) {
    this.classVariables = classVariables;
  }

  public SdtmClass classVariables(List<SdtmClassVariable> classVariables) {
    this.classVariables = classVariables;
    return this;
  }

  public SdtmClass addClassVariablesItem(SdtmClassVariable classVariablesItem) {
    this.classVariables.add(classVariablesItem);
    return this;
  }

 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<SdtmDataset> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<SdtmDataset> datasets) {
    this.datasets = datasets;
  }

  public SdtmClass datasets(List<SdtmDataset> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SdtmClass addDatasetsItem(SdtmDataset datasetsItem) {
    this.datasets.add(datasetsItem);
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
    SdtmClass sdtmClass = (SdtmClass) o;
    return Objects.equals(this.ordinal, sdtmClass.ordinal) &&
        Objects.equals(this.name, sdtmClass.name) &&
        Objects.equals(this.label, sdtmClass.label) &&
        Objects.equals(this.description, sdtmClass.description) &&
        Objects.equals(this.links, sdtmClass.links) &&
        Objects.equals(this.classVariables, sdtmClass.classVariables) &&
        Objects.equals(this.datasets, sdtmClass.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links, classVariables, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClass {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classVariables: ").append(toIndentedString(classVariables)).append("\n");
    sb.append("    datasets: ").append(toIndentedString(datasets)).append("\n");
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

