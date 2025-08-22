package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClass;
import org.openapitools.model.SdtmDataset;
import org.openapitools.model.SdtmProductLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmProduct  {
  
  @ApiModelProperty(example = "SDTM v1.8", value = "")
  private String name;

  @ApiModelProperty(example = "Study Data Tabulation Model Version 1.8 (Final)", value = "")
  private String label;

  @ApiModelProperty(example = "This document describes the Study Data Tabulation Model (SDTM), which defines a standard structure for study data tabulations.", value = "")
  private String description;

  @ApiModelProperty(example = "CDISC Submission Data Standards Team and CDISC SDTM Governance Committee", value = "")
  private String source;

  @ApiModelProperty(example = "2019-09-17", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "1.8", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private SdtmProductLinks links;

  @ApiModelProperty(value = "")
  private List<SdtmClass> classes = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SdtmDataset> datasets = new ArrayList<>();
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

  public SdtmProduct name(String name) {
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

  public SdtmProduct label(String label) {
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

  public SdtmProduct description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get source
   * @return source
  **/
  @JsonProperty("source")
  public String getSource() {
    return source;
  }

  public void setSource(String source) {
    this.source = source;
  }

  public SdtmProduct source(String source) {
    this.source = source;
    return this;
  }

 /**
   * Get effectiveDate
   * @return effectiveDate
  **/
  @JsonProperty("effectiveDate")
  public String getEffectiveDate() {
    return effectiveDate;
  }

  public void setEffectiveDate(String effectiveDate) {
    this.effectiveDate = effectiveDate;
  }

  public SdtmProduct effectiveDate(String effectiveDate) {
    this.effectiveDate = effectiveDate;
    return this;
  }

 /**
   * Get registrationStatus
   * @return registrationStatus
  **/
  @JsonProperty("registrationStatus")
  public String getRegistrationStatus() {
    return registrationStatus;
  }

  public void setRegistrationStatus(String registrationStatus) {
    this.registrationStatus = registrationStatus;
  }

  public SdtmProduct registrationStatus(String registrationStatus) {
    this.registrationStatus = registrationStatus;
    return this;
  }

 /**
   * Get version
   * @return version
  **/
  @JsonProperty("version")
  public String getVersion() {
    return version;
  }

  public void setVersion(String version) {
    this.version = version;
  }

  public SdtmProduct version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmProductLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmProductLinks links) {
    this.links = links;
  }

  public SdtmProduct links(SdtmProductLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<SdtmClass> getClasses() {
    return classes;
  }

  public void setClasses(List<SdtmClass> classes) {
    this.classes = classes;
  }

  public SdtmProduct classes(List<SdtmClass> classes) {
    this.classes = classes;
    return this;
  }

  public SdtmProduct addClassesItem(SdtmClass classesItem) {
    this.classes.add(classesItem);
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

  public SdtmProduct datasets(List<SdtmDataset> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SdtmProduct addDatasetsItem(SdtmDataset datasetsItem) {
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
    SdtmProduct sdtmProduct = (SdtmProduct) o;
    return Objects.equals(this.name, sdtmProduct.name) &&
        Objects.equals(this.label, sdtmProduct.label) &&
        Objects.equals(this.description, sdtmProduct.description) &&
        Objects.equals(this.source, sdtmProduct.source) &&
        Objects.equals(this.effectiveDate, sdtmProduct.effectiveDate) &&
        Objects.equals(this.registrationStatus, sdtmProduct.registrationStatus) &&
        Objects.equals(this.version, sdtmProduct.version) &&
        Objects.equals(this.links, sdtmProduct.links) &&
        Objects.equals(this.classes, sdtmProduct.classes) &&
        Objects.equals(this.datasets, sdtmProduct.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links, classes, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmProduct {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    registrationStatus: ").append(toIndentedString(registrationStatus)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

