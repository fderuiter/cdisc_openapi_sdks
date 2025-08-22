package org.openapitools.model;

import org.openapitools.model.CtPackageCodelistsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackageCodelists  {
  
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

  @ApiModelProperty(example = "TODO", value = "")
  private String version;

  @ApiModelProperty(value = "")
  private CtPackageCodelistsLinks links;
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

  public CtPackageCodelists name(String name) {
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

  public CtPackageCodelists label(String label) {
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

  public CtPackageCodelists description(String description) {
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

  public CtPackageCodelists source(String source) {
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

  public CtPackageCodelists effectiveDate(String effectiveDate) {
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

  public CtPackageCodelists registrationStatus(String registrationStatus) {
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

  public CtPackageCodelists version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CtPackageCodelistsLinks getLinks() {
    return links;
  }

  public void setLinks(CtPackageCodelistsLinks links) {
    this.links = links;
  }

  public CtPackageCodelists links(CtPackageCodelistsLinks links) {
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
    CtPackageCodelists ctPackageCodelists = (CtPackageCodelists) o;
    return Objects.equals(this.name, ctPackageCodelists.name) &&
        Objects.equals(this.label, ctPackageCodelists.label) &&
        Objects.equals(this.description, ctPackageCodelists.description) &&
        Objects.equals(this.source, ctPackageCodelists.source) &&
        Objects.equals(this.effectiveDate, ctPackageCodelists.effectiveDate) &&
        Objects.equals(this.registrationStatus, ctPackageCodelists.registrationStatus) &&
        Objects.equals(this.version, ctPackageCodelists.version) &&
        Objects.equals(this.links, ctPackageCodelists.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, source, effectiveDate, registrationStatus, version, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackageCodelists {\n");
    
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

