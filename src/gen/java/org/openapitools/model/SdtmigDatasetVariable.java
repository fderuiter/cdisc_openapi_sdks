package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmigDatasetVariableLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetVariable  {
  
  @ApiModelProperty(example = "42", value = "")
  private String ordinal;

  @ApiModelProperty(example = "LBDTC", value = "")
  private String name;

  @ApiModelProperty(example = "Date/Time of Specimen Collection", value = "")
  private String label;

  @ApiModelProperty(example = "Date/time of specimen collection represented in ISO 8601 character format.", value = "")
  private String description;

  @ApiModelProperty(example = "Timing", value = "")
  private String role;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "Exp", value = "")
  private String core;

  @ApiModelProperty(example = "ISO 8601", value = "")
  private String describedValueDomain;

  @ApiModelProperty(example = "TODO", value = "")
  private List<String> valueList = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SdtmigDatasetVariableLinks links;
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

  public SdtmigDatasetVariable ordinal(String ordinal) {
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

  public SdtmigDatasetVariable name(String name) {
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

  public SdtmigDatasetVariable label(String label) {
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

  public SdtmigDatasetVariable description(String description) {
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

  public SdtmigDatasetVariable role(String role) {
    this.role = role;
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

  public SdtmigDatasetVariable simpleDatatype(String simpleDatatype) {
    this.simpleDatatype = simpleDatatype;
    return this;
  }

 /**
   * Get core
   * @return core
  **/
  @JsonProperty("core")
  public String getCore() {
    return core;
  }

  public void setCore(String core) {
    this.core = core;
  }

  public SdtmigDatasetVariable core(String core) {
    this.core = core;
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

  public SdtmigDatasetVariable describedValueDomain(String describedValueDomain) {
    this.describedValueDomain = describedValueDomain;
    return this;
  }

 /**
   * Get valueList
   * @return valueList
  **/
  @JsonProperty("valueList")
  public List<String> getValueList() {
    return valueList;
  }

  public void setValueList(List<String> valueList) {
    this.valueList = valueList;
  }

  public SdtmigDatasetVariable valueList(List<String> valueList) {
    this.valueList = valueList;
    return this;
  }

  public SdtmigDatasetVariable addValueListItem(String valueListItem) {
    this.valueList.add(valueListItem);
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SdtmigDatasetVariableLinks getLinks() {
    return links;
  }

  public void setLinks(SdtmigDatasetVariableLinks links) {
    this.links = links;
  }

  public SdtmigDatasetVariable links(SdtmigDatasetVariableLinks links) {
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
    SdtmigDatasetVariable sdtmigDatasetVariable = (SdtmigDatasetVariable) o;
    return Objects.equals(this.ordinal, sdtmigDatasetVariable.ordinal) &&
        Objects.equals(this.name, sdtmigDatasetVariable.name) &&
        Objects.equals(this.label, sdtmigDatasetVariable.label) &&
        Objects.equals(this.description, sdtmigDatasetVariable.description) &&
        Objects.equals(this.role, sdtmigDatasetVariable.role) &&
        Objects.equals(this.simpleDatatype, sdtmigDatasetVariable.simpleDatatype) &&
        Objects.equals(this.core, sdtmigDatasetVariable.core) &&
        Objects.equals(this.describedValueDomain, sdtmigDatasetVariable.describedValueDomain) &&
        Objects.equals(this.valueList, sdtmigDatasetVariable.valueList) &&
        Objects.equals(this.links, sdtmigDatasetVariable.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, role, simpleDatatype, core, describedValueDomain, valueList, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetVariable {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    role: ").append(toIndentedString(role)).append("\n");
    sb.append("    simpleDatatype: ").append(toIndentedString(simpleDatatype)).append("\n");
    sb.append("    core: ").append(toIndentedString(core)).append("\n");
    sb.append("    describedValueDomain: ").append(toIndentedString(describedValueDomain)).append("\n");
    sb.append("    valueList: ").append(toIndentedString(valueList)).append("\n");
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

