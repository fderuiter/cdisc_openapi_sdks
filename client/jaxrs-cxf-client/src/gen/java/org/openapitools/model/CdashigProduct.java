package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClass;
import org.openapitools.model.CdashigProductLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigProduct  {
  
  @ApiModelProperty(example = "CDASHIG v2.1", value = "")
  private String name;

  @ApiModelProperty(example = "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1", value = "")
  private String label;

  @ApiModelProperty(example = "The Clinical Data Acquisition Standards Harmonization (CDASH) Model, the CDASH Implementation Guide (CDASHIG), and the CDASHIG Metadata Table define basic standards for the collection of clinical trial data and how to implement the standard for specific case report forms (CRFs).", value = "")
  private String description;

  @ApiModelProperty(example = "Prepared by the CDISC CDASH Team", value = "")
  private String source;

  @ApiModelProperty(example = "2019-11-01", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "2.1", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private CdashigProductLinks links;

  @ApiModelProperty(value = "")
  private List<CdashigClass> classes = new ArrayList<>();
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

  public CdashigProduct name(String name) {
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

  public CdashigProduct label(String label) {
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

  public CdashigProduct description(String description) {
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

  public CdashigProduct source(String source) {
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

  public CdashigProduct effectiveDate(String effectiveDate) {
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

  public CdashigProduct registrationStatus(String registrationStatus) {
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

  public CdashigProduct version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigProductLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigProductLinks links) {
    this.links = links;
  }

  public CdashigProduct links(CdashigProductLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<CdashigClass> getClasses() {
    return classes;
  }

  public void setClasses(List<CdashigClass> classes) {
    this.classes = classes;
  }

  public CdashigProduct classes(List<CdashigClass> classes) {
    this.classes = classes;
    return this;
  }

  public CdashigProduct addClassesItem(CdashigClass classesItem) {
    this.classes.add(classesItem);
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
    CdashigProduct cdashigProduct = (CdashigProduct) o;
    return Objects.equals(this.name, cdashigProduct.name) &&
        Objects.equals(this.label, cdashigProduct.label) &&
        Objects.equals(this.description, cdashigProduct.description) &&
        Objects.equals(this.source, cdashigProduct.source) &&
        Objects.equals(this.effectiveDate, cdashigProduct.effectiveDate) &&
        Objects.equals(this.registrationStatus, cdashigProduct.registrationStatus) &&
        Objects.equals(this.version, cdashigProduct.version) &&
        Objects.equals(this.links, cdashigProduct.links) &&
        Objects.equals(this.classes, cdashigProduct.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigProduct {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    registrationStatus: ").append(toIndentedString(registrationStatus)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

