package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClass;
import org.openapitools.model.CdashDomain;
import org.openapitools.model.CdashProductLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashProduct  {
  
  @ApiModelProperty(example = "CDASH Model v1.1", value = "")
  private String name;

  @ApiModelProperty(example = "Clinical Data Acquisition Standards Harmonization Model Version 1.1", value = "")
  private String label;

  @ApiModelProperty(example = "The Clinical Data Acquisition Standards Harmonization (CDASH) Model describes the foundational structure for the organization, naming, and description of variables and associated attributes to support data collection in clinical trials. The CDASH Model provides naming conventions for the CDASH Implementation Guide (CDASHIG) variables along with additional metadata to help facilitate mapping collected data to their respective SDTM Implementation Guide (SDTMIG) variables.", value = "")
  private String description;

  @ApiModelProperty(example = "Prepared by the CDISC CDASH Team", value = "")
  private String source;

  @ApiModelProperty(example = "2019-11-01", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "1.1", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private CdashProductLinks links;

  @ApiModelProperty(value = "")
  private List<CdashClass> classes = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<CdashDomain> domains = new ArrayList<>();
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

  public CdashProduct name(String name) {
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

  public CdashProduct label(String label) {
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

  public CdashProduct description(String description) {
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

  public CdashProduct source(String source) {
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

  public CdashProduct effectiveDate(String effectiveDate) {
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

  public CdashProduct registrationStatus(String registrationStatus) {
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

  public CdashProduct version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashProductLinks getLinks() {
    return links;
  }

  public void setLinks(CdashProductLinks links) {
    this.links = links;
  }

  public CdashProduct links(CdashProductLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<CdashClass> getClasses() {
    return classes;
  }

  public void setClasses(List<CdashClass> classes) {
    this.classes = classes;
  }

  public CdashProduct classes(List<CdashClass> classes) {
    this.classes = classes;
    return this;
  }

  public CdashProduct addClassesItem(CdashClass classesItem) {
    this.classes.add(classesItem);
    return this;
  }

 /**
   * Get domains
   * @return domains
  **/
  @JsonProperty("domains")
  public List<CdashDomain> getDomains() {
    return domains;
  }

  public void setDomains(List<CdashDomain> domains) {
    this.domains = domains;
  }

  public CdashProduct domains(List<CdashDomain> domains) {
    this.domains = domains;
    return this;
  }

  public CdashProduct addDomainsItem(CdashDomain domainsItem) {
    this.domains.add(domainsItem);
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
    CdashProduct cdashProduct = (CdashProduct) o;
    return Objects.equals(this.name, cdashProduct.name) &&
        Objects.equals(this.label, cdashProduct.label) &&
        Objects.equals(this.description, cdashProduct.description) &&
        Objects.equals(this.source, cdashProduct.source) &&
        Objects.equals(this.effectiveDate, cdashProduct.effectiveDate) &&
        Objects.equals(this.registrationStatus, cdashProduct.registrationStatus) &&
        Objects.equals(this.version, cdashProduct.version) &&
        Objects.equals(this.links, cdashProduct.links) &&
        Objects.equals(this.classes, cdashProduct.classes) &&
        Objects.equals(this.domains, cdashProduct.domains);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links, classes, domains);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashProduct {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    registrationStatus: ").append(toIndentedString(registrationStatus)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
    sb.append("    domains: ").append(toIndentedString(domains)).append("\n");
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

