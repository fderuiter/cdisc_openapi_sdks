package org.openapitools.model;

import org.openapitools.model.AdamProductDatastructuresLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamProductDatastructures  {
  
  @ApiModelProperty(example = "ADaMIG v1.1", value = "")
  private String name;

  @ApiModelProperty(example = "Analysis Data Model Implementation Guide Version 1.1", value = "")
  private String label;

  @ApiModelProperty(example = "This document comprises the Clinical Data Interchange Standards Consortium (CDISC) Version 1.1 of the Analysis Data Model Implementation Guide (ADaMIG), which has been prepared by the Analysis Data Model (ADaM) Team of CDISC. The ADaMIG specifies ADaM standard dataset structures and variables, including naming conventions. It also specifies standard solutions to implementation issues.  The ADaMIG must be used in close concert with the current version of the document titled \"Analysis Data Model (ADaM)\" which is available for download at http://www.cdisc.org/adam. That document explains the purpose of the Analysis Data Model. It describes fundamental principles that apply to all analysis datasets, with the driving principle being that the design of ADaM datasets and associated metadata facilitate explicit communication of the content of, input to, and purpose of submitted ADaM datasets. The Analysis Data Model supports efficient generation, replication, and review of analysis results.", value = "")
  private String description;

  @ApiModelProperty(example = "Prepared by the CDISC Analysis Data Model Team", value = "")
  private String source;

  @ApiModelProperty(example = "2016-02-12", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "1.1", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private AdamProductDatastructuresLinks links;
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

  public AdamProductDatastructures name(String name) {
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

  public AdamProductDatastructures label(String label) {
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

  public AdamProductDatastructures description(String description) {
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

  public AdamProductDatastructures source(String source) {
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

  public AdamProductDatastructures effectiveDate(String effectiveDate) {
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

  public AdamProductDatastructures registrationStatus(String registrationStatus) {
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

  public AdamProductDatastructures version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public AdamProductDatastructuresLinks getLinks() {
    return links;
  }

  public void setLinks(AdamProductDatastructuresLinks links) {
    this.links = links;
  }

  public AdamProductDatastructures links(AdamProductDatastructuresLinks links) {
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
    AdamProductDatastructures adamProductDatastructures = (AdamProductDatastructures) o;
    return Objects.equals(this.name, adamProductDatastructures.name) &&
        Objects.equals(this.label, adamProductDatastructures.label) &&
        Objects.equals(this.description, adamProductDatastructures.description) &&
        Objects.equals(this.source, adamProductDatastructures.source) &&
        Objects.equals(this.effectiveDate, adamProductDatastructures.effectiveDate) &&
        Objects.equals(this.registrationStatus, adamProductDatastructures.registrationStatus) &&
        Objects.equals(this.version, adamProductDatastructures.version) &&
        Objects.equals(this.links, adamProductDatastructures.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamProductDatastructures {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    registrationStatus: ").append(toIndentedString(registrationStatus)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
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

