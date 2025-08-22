package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SendigDatasetVariableLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigDatasetVariable  {
  
  @ApiModelProperty(example = "8", value = "")
  private String ordinal;

  @ApiModelProperty(example = "VSTEST", value = "")
  private String name;

  @ApiModelProperty(example = "Vital Signs Test Name", value = "")
  private String label;

  @ApiModelProperty(example = "Long name for VSTESTCD. The value in VSTEST cannot be longer than 40 characters.", value = "")
  private String description;

  @ApiModelProperty(example = "Synonym Qualifier", value = "")
  private String role;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "Req", value = "")
  private String core;

  @ApiModelProperty(example = "Value domain example", value = "")
  private String describedValueDomain;

  @ApiModelProperty(example = "[\"Value example 1\",\"Value example 2\"]", value = "")
  private List<String> valueList = new ArrayList<>();

  @ApiModelProperty(value = "")
  private SendigDatasetVariableLinks links;
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

  public SendigDatasetVariable ordinal(String ordinal) {
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

  public SendigDatasetVariable name(String name) {
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

  public SendigDatasetVariable label(String label) {
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

  public SendigDatasetVariable description(String description) {
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

  public SendigDatasetVariable role(String role) {
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

  public SendigDatasetVariable simpleDatatype(String simpleDatatype) {
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

  public SendigDatasetVariable core(String core) {
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

  public SendigDatasetVariable describedValueDomain(String describedValueDomain) {
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

  public SendigDatasetVariable valueList(List<String> valueList) {
    this.valueList = valueList;
    return this;
  }

  public SendigDatasetVariable addValueListItem(String valueListItem) {
    this.valueList.add(valueListItem);
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public SendigDatasetVariableLinks getLinks() {
    return links;
  }

  public void setLinks(SendigDatasetVariableLinks links) {
    this.links = links;
  }

  public SendigDatasetVariable links(SendigDatasetVariableLinks links) {
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
    SendigDatasetVariable sendigDatasetVariable = (SendigDatasetVariable) o;
    return Objects.equals(this.ordinal, sendigDatasetVariable.ordinal) &&
        Objects.equals(this.name, sendigDatasetVariable.name) &&
        Objects.equals(this.label, sendigDatasetVariable.label) &&
        Objects.equals(this.description, sendigDatasetVariable.description) &&
        Objects.equals(this.role, sendigDatasetVariable.role) &&
        Objects.equals(this.simpleDatatype, sendigDatasetVariable.simpleDatatype) &&
        Objects.equals(this.core, sendigDatasetVariable.core) &&
        Objects.equals(this.describedValueDomain, sendigDatasetVariable.describedValueDomain) &&
        Objects.equals(this.valueList, sendigDatasetVariable.valueList) &&
        Objects.equals(this.links, sendigDatasetVariable.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, role, simpleDatatype, core, describedValueDomain, valueList, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigDatasetVariable {\n");
    
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

