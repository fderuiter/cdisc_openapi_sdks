package org.openapitools.model;

import org.openapitools.model.QrsResponsegroupsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsResponsegroups  {
  
  @ApiModelProperty(example = "AIMS v1.0", value = "")
  private String name;

  @ApiModelProperty(example = "Abnormal Involuntary Movement Scale Version 1.0", value = "")
  private String label;

  @ApiModelProperty(example = "Abnormal Involuntary Movement Scale (AIMS) (Guy W. Ed. ECDEU Assessment Manual for Psychopharmacology. Rockville MD: US Dept of Health, Education and Welfare. 1976, Publication No. (ADM) 76-338).", value = "")
  private String description;

  @ApiModelProperty(example = "2013-05-22", value = "")
  private String effectiveDate;

  @ApiModelProperty(example = "2030-12-31", value = "")
  private String untilDate;

  @ApiModelProperty(example = "Final", value = "")
  private String registrationStatus;

  @ApiModelProperty(example = "1.0", value = "")
  private String version;

  @ApiModelProperty(example = "Questionnaire", value = "")
  private String qrsType;

  @ApiModelProperty(value = "")
  private QrsResponsegroupsLinks links;
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

  public QrsResponsegroups name(String name) {
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

  public QrsResponsegroups label(String label) {
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

  public QrsResponsegroups description(String description) {
    this.description = description;
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

  public QrsResponsegroups effectiveDate(String effectiveDate) {
    this.effectiveDate = effectiveDate;
    return this;
  }

 /**
   * Get untilDate
   * @return untilDate
  **/
  @JsonProperty("untilDate")
  public String getUntilDate() {
    return untilDate;
  }

  public void setUntilDate(String untilDate) {
    this.untilDate = untilDate;
  }

  public QrsResponsegroups untilDate(String untilDate) {
    this.untilDate = untilDate;
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

  public QrsResponsegroups registrationStatus(String registrationStatus) {
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

  public QrsResponsegroups version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get qrsType
   * @return qrsType
  **/
  @JsonProperty("qrsType")
  public String getQrsType() {
    return qrsType;
  }

  public void setQrsType(String qrsType) {
    this.qrsType = qrsType;
  }

  public QrsResponsegroups qrsType(String qrsType) {
    this.qrsType = qrsType;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public QrsResponsegroupsLinks getLinks() {
    return links;
  }

  public void setLinks(QrsResponsegroupsLinks links) {
    this.links = links;
  }

  public QrsResponsegroups links(QrsResponsegroupsLinks links) {
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
    QrsResponsegroups qrsResponsegroups = (QrsResponsegroups) o;
    return Objects.equals(this.name, qrsResponsegroups.name) &&
        Objects.equals(this.label, qrsResponsegroups.label) &&
        Objects.equals(this.description, qrsResponsegroups.description) &&
        Objects.equals(this.effectiveDate, qrsResponsegroups.effectiveDate) &&
        Objects.equals(this.untilDate, qrsResponsegroups.untilDate) &&
        Objects.equals(this.registrationStatus, qrsResponsegroups.registrationStatus) &&
        Objects.equals(this.version, qrsResponsegroups.version) &&
        Objects.equals(this.qrsType, qrsResponsegroups.qrsType) &&
        Objects.equals(this.links, qrsResponsegroups.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, description, effectiveDate, untilDate, registrationStatus, version, qrsType, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsResponsegroups {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    untilDate: ").append(toIndentedString(untilDate)).append("\n");
    sb.append("    registrationStatus: ").append(toIndentedString(registrationStatus)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    qrsType: ").append(toIndentedString(qrsType)).append("\n");
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

