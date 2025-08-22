package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmigClassLinks;
import org.openapitools.model.SdtmigDataset;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigClass  {
  
  @ApiModelProperty(example = "5", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Findings", value = "")
  private String name;

  @ApiModelProperty(example = "Findings Observation Class", value = "")
  private String label;

  @ApiModelProperty(example = "This SDTM class captures the observations resulting from planned evaluations to address specific tests or questions such as laboratory tests, ECG testing, and questions listed on questionnaires. (Source: CDISC Controlled Terminology, GNRLOBSC, C103373, 2018-06-29)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private SdtmigClassLinks links;

  @ApiModelProperty(value = "")
  private List<SdtmigDataset> datasets = new ArrayList<>();
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

  public SdtmigClass ordinal(String ordinal) {
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

  public SdtmigClass name(String name) {
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

  public SdtmigClass label(String label) {
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

  public SdtmigClass description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmigClassLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmigClassLinks links) {
    this.links = links;
  }

  public SdtmigClass links(SdtmigClassLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<SdtmigDataset> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<SdtmigDataset> datasets) {
    this.datasets = datasets;
  }

  public SdtmigClass datasets(List<SdtmigDataset> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SdtmigClass addDatasetsItem(SdtmigDataset datasetsItem) {
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
    SdtmigClass sdtmigClass = (SdtmigClass) o;
    return Objects.equals(this.ordinal, sdtmigClass.ordinal) &&
        Objects.equals(this.name, sdtmigClass.name) &&
        Objects.equals(this.label, sdtmigClass.label) &&
        Objects.equals(this.description, sdtmigClass.description) &&
        Objects.equals(this.links, sdtmigClass.links) &&
        Objects.equals(this.datasets, sdtmigClass.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigClass {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

