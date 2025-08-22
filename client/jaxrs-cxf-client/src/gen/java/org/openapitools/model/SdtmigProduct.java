package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmigClass;
import org.openapitools.model.SdtmigProductLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigProduct  {
  
  @ApiModelProperty(example = "SDTMIG v3.3", value = "")
  private String name;

  @ApiModelProperty(example = "Study Data Tabulation Model Implementation Guide: Human Clinical Trials Version 3.3 (Final)", value = "")
  private String label;

  @ApiModelProperty(example = "CDISC Version 3.3 (v3.3) Study Data Tabulation Model Implementation Guide for Human Clinical Trials (SDTMIG) is intended to guide the organization, structure, and format of standard clinical trial tabulation datasets submitted to a regulatory authority.", value = "")
  private String description;

  @ApiModelProperty(example = "Prepared by the CDISC Submission Data Standards Team", value = "")
  private String source;

  @ApiModelProperty(example = "2018-11-20", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "3.3", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private SdtmigProductLinks links;

  @ApiModelProperty(value = "")
  private List<SdtmigClass> classes = new ArrayList<>();
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

  public SdtmigProduct name(String name) {
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

  public SdtmigProduct label(String label) {
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

  public SdtmigProduct description(String description) {
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

  public SdtmigProduct source(String source) {
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

  public SdtmigProduct effectiveDate(String effectiveDate) {
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

  public SdtmigProduct registrationStatus(String registrationStatus) {
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

  public SdtmigProduct version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmigProductLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmigProductLinks links) {
    this.links = links;
  }

  public SdtmigProduct links(SdtmigProductLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<SdtmigClass> getClasses() {
    return classes;
  }

  public void setClasses(List<SdtmigClass> classes) {
    this.classes = classes;
  }

  public SdtmigProduct classes(List<SdtmigClass> classes) {
    this.classes = classes;
    return this;
  }

  public SdtmigProduct addClassesItem(SdtmigClass classesItem) {
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
    SdtmigProduct sdtmigProduct = (SdtmigProduct) o;
    return Objects.equals(this.name, sdtmigProduct.name) &&
        Objects.equals(this.label, sdtmigProduct.label) &&
        Objects.equals(this.description, sdtmigProduct.description) &&
        Objects.equals(this.source, sdtmigProduct.source) &&
        Objects.equals(this.effectiveDate, sdtmigProduct.effectiveDate) &&
        Objects.equals(this.registrationStatus, sdtmigProduct.registrationStatus) &&
        Objects.equals(this.version, sdtmigProduct.version) &&
        Objects.equals(this.links, sdtmigProduct.links) &&
        Objects.equals(this.classes, sdtmigProduct.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigProduct {\n");
    
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

