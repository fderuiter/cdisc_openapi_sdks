package org.openapitools.model;

import org.openapitools.model.SdtmClassVariableLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassVariable  {
  
  @ApiModelProperty(example = "26", value = "")
  private String ordinal;

  @ApiModelProperty(example = "--DTC", value = "")
  private String name;

  @ApiModelProperty(example = "Date/Time of Collection", value = "")
  private String label;

  @ApiModelProperty(example = "Collection date and time of an observation.", value = "")
  private String description;

  @ApiModelProperty(example = "Timing", value = "")
  private String role;

  @ApiModelProperty(example = "Timing", value = "")
  private String roleDescription;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "ISO 8601", value = "")
  private String describedValueDomain;

  @ApiModelProperty(value = "")
  private SdtmClassVariableLinks links;
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

  public SdtmClassVariable ordinal(String ordinal) {
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

  public SdtmClassVariable name(String name) {
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

  public SdtmClassVariable label(String label) {
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

  public SdtmClassVariable description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get role
   * @return role
  **/
  @JsonProperty("role")
  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public SdtmClassVariable role(String role) {
    this.role = role;
    return this;
  }

 /**
   * Get roleDescription
   * @return roleDescription
  **/
  @JsonProperty("roleDescription")
  public String getRoleDescription() {
    return roleDescription;
  }

  public void setRoleDescription(String roleDescription) {
    this.roleDescription = roleDescription;
  }

  public SdtmClassVariable roleDescription(String roleDescription) {
    this.roleDescription = roleDescription;
    return this;
  }

 /**
   * Get simpleDatatype
   * @return simpleDatatype
  **/
  @JsonProperty("simpleDatatype")
  public String getSimpleDatatype() {
    return simpleDatatype;
  }

  public void setSimpleDatatype(String simpleDatatype) {
    this.simpleDatatype = simpleDatatype;
  }

  public SdtmClassVariable simpleDatatype(String simpleDatatype) {
    this.simpleDatatype = simpleDatatype;
    return this;
  }

 /**
   * Get describedValueDomain
   * @return describedValueDomain
  **/
  @JsonProperty("describedValueDomain")
  public String getDescribedValueDomain() {
    return describedValueDomain;
  }

  public void setDescribedValueDomain(String describedValueDomain) {
    this.describedValueDomain = describedValueDomain;
  }

  public SdtmClassVariable describedValueDomain(String describedValueDomain) {
    this.describedValueDomain = describedValueDomain;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmClassVariableLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmClassVariableLinks links) {
    this.links = links;
  }

  public SdtmClassVariable links(SdtmClassVariableLinks links) {
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
    SdtmClassVariable sdtmClassVariable = (SdtmClassVariable) o;
    return Objects.equals(this.ordinal, sdtmClassVariable.ordinal) &&
        Objects.equals(this.name, sdtmClassVariable.name) &&
        Objects.equals(this.label, sdtmClassVariable.label) &&
        Objects.equals(this.description, sdtmClassVariable.description) &&
        Objects.equals(this.role, sdtmClassVariable.role) &&
        Objects.equals(this.roleDescription, sdtmClassVariable.roleDescription) &&
        Objects.equals(this.simpleDatatype, sdtmClassVariable.simpleDatatype) &&
        Objects.equals(this.describedValueDomain, sdtmClassVariable.describedValueDomain) &&
        Objects.equals(this.links, sdtmClassVariable.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, role, roleDescription, simpleDatatype, describedValueDomain, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassVariable {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    role: ").append(toIndentedString(role)).append("\n");
    sb.append("    roleDescription: ").append(toIndentedString(roleDescription)).append("\n");
    sb.append("    simpleDatatype: ").append(toIndentedString(simpleDatatype)).append("\n");
    sb.append("    describedValueDomain: ").append(toIndentedString(describedValueDomain)).append("\n");
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

