package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtPackageCodelists;
import org.openapitools.model.CtPackageLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackage  {
  
  @ApiModelProperty(example = "SDTM CT 2019-12-20", value = "")
  private String name;

  @ApiModelProperty(example = "SDTM Controlled Terminology Package 40 Effective 2019-12-20", value = "")
  private String label;

  @ApiModelProperty(example = "CDISC Controlled Terminology for SDTM is the set of CDISC-developed or CDISC-adopted standard expressions (values) used with data items within CDISC-defined SDTM datasets.", value = "")
  private String description;

  @ApiModelProperty(example = "SDTM Controlled Terminology developed by the CDISC Terminology Team in collaboration with the National Cancer Institute's Enterprise Vocabulary Services (EVS)", value = "")
  private String source;

  @ApiModelProperty(example = "2019-12-20", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "2019-12-20", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private CtPackageLinks links;

  @ApiModelProperty(value = "")
  private List<CtPackageCodelists> codelists = new ArrayList<>();
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

  public CtPackage name(String name) {
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

  public CtPackage label(String label) {
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

  public CtPackage description(String description) {
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

  public CtPackage source(String source) {
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

  public CtPackage effectiveDate(String effectiveDate) {
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

  public CtPackage registrationStatus(String registrationStatus) {
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

  public CtPackage version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CtPackageLinks getLinks() {
    return links;
  }

  public void setLinks(CtPackageLinks links) {
    this.links = links;
  }

  public CtPackage links(CtPackageLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get codelists
   * @return codelists
  **/
  @JsonProperty("codelists")
  public List<CtPackageCodelists> getCodelists() {
    return codelists;
  }

  public void setCodelists(List<CtPackageCodelists> codelists) {
    this.codelists = codelists;
  }

  public CtPackage codelists(List<CtPackageCodelists> codelists) {
    this.codelists = codelists;
    return this;
  }

  public CtPackage addCodelistsItem(CtPackageCodelists codelistsItem) {
    this.codelists.add(codelistsItem);
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
    CtPackage ctPackage = (CtPackage) o;
    return Objects.equals(this.name, ctPackage.name) &&
        Objects.equals(this.label, ctPackage.label) &&
        Objects.equals(this.description, ctPackage.description) &&
        Objects.equals(this.source, ctPackage.source) &&
        Objects.equals(this.effectiveDate, ctPackage.effectiveDate) &&
        Objects.equals(this.registrationStatus, ctPackage.registrationStatus) &&
        Objects.equals(this.version, ctPackage.version) &&
        Objects.equals(this.links, ctPackage.links) &&
        Objects.equals(this.codelists, ctPackage.codelists);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links, codelists);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackage {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    source: ").append(toIndentedString(source)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    registrationStatus: ").append(toIndentedString(registrationStatus)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    codelists: ").append(toIndentedString(codelists)).append("\n");
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

