package org.openapitools.model;

import org.openapitools.model.SdtmDatasetVariableLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmDatasetVariable  {
  
  @ApiModelProperty(example = "4", value = "")
  private String ordinal;

  @ApiModelProperty(example = "SUBJID", value = "")
  private String name;

  @ApiModelProperty(example = "Subject Identifier for the Study", value = "")
  private String label;

  @ApiModelProperty(example = "Subject identifier, which must be unique within the study. Often the ID of the subject as recorded on a CRF.", value = "")
  private String description;

  @ApiModelProperty(example = "Topic", value = "")
  private String role;

  @ApiModelProperty(example = "Topic", value = "")
  private String roleDescription;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "Sponsor-Defined", value = "")
  private String describedValueDomain;

  @ApiModelProperty(value = "")
  private SdtmDatasetVariableLinks links;
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

  public SdtmDatasetVariable ordinal(String ordinal) {
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

  public SdtmDatasetVariable name(String name) {
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

  public SdtmDatasetVariable label(String label) {
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

  public SdtmDatasetVariable description(String description) {
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

  public SdtmDatasetVariable role(String role) {
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

  public SdtmDatasetVariable roleDescription(String roleDescription) {
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

  public SdtmDatasetVariable simpleDatatype(String simpleDatatype) {
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

  public SdtmDatasetVariable describedValueDomain(String describedValueDomain) {
    this.describedValueDomain = describedValueDomain;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmDatasetVariableLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmDatasetVariableLinks links) {
    this.links = links;
  }

  public SdtmDatasetVariable links(SdtmDatasetVariableLinks links) {
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
    SdtmDatasetVariable sdtmDatasetVariable = (SdtmDatasetVariable) o;
    return Objects.equals(this.ordinal, sdtmDatasetVariable.ordinal) &&
        Objects.equals(this.name, sdtmDatasetVariable.name) &&
        Objects.equals(this.label, sdtmDatasetVariable.label) &&
        Objects.equals(this.description, sdtmDatasetVariable.description) &&
        Objects.equals(this.role, sdtmDatasetVariable.role) &&
        Objects.equals(this.roleDescription, sdtmDatasetVariable.roleDescription) &&
        Objects.equals(this.simpleDatatype, sdtmDatasetVariable.simpleDatatype) &&
        Objects.equals(this.describedValueDomain, sdtmDatasetVariable.describedValueDomain) &&
        Objects.equals(this.links, sdtmDatasetVariable.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, role, roleDescription, simpleDatatype, describedValueDomain, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmDatasetVariable {\n");
    
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

