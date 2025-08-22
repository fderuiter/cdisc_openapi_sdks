package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AdamVariableLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamVariable  {
  
  @ApiModelProperty(example = "5", value = "")
  private String ordinal;

  @ApiModelProperty(example = "SITEGRy", value = "")
  private String name;

  @ApiModelProperty(example = "Pooled Site Group y", value = "")
  private String label;

  @ApiModelProperty(example = "Character description of a grouping or pooling of clinical sites for analysis purposes. For example, SITEGR3 is the name of a variable containing site group (pooled site) names, where the grouping has been done according to the third site grouping algorithm, defined in variable metadata; SITEGR3 does not mean the third group of sites.", value = "")
  private String description;

  @ApiModelProperty(example = "Perm", value = "")
  private String core;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "Some codelist", value = "")
  private String describedValueDomain;

  @ApiModelProperty(example = "TODO", value = "")
  private List<String> valueList = new ArrayList<>();

  @ApiModelProperty(value = "")
  private AdamVariableLinks links;
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

  public AdamVariable ordinal(String ordinal) {
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

  public AdamVariable name(String name) {
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

  public AdamVariable label(String label) {
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

  public AdamVariable description(String description) {
    this.description = description;
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

  public AdamVariable core(String core) {
    this.core = core;
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

  public AdamVariable simpleDatatype(String simpleDatatype) {
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

  public AdamVariable describedValueDomain(String describedValueDomain) {
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

  public AdamVariable valueList(List<String> valueList) {
    this.valueList = valueList;
    return this;
  }

  public AdamVariable addValueListItem(String valueListItem) {
    this.valueList.add(valueListItem);
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public AdamVariableLinks getLinks() {
    return links;
  }

  public void setLinks(AdamVariableLinks links) {
    this.links = links;
  }

  public AdamVariable links(AdamVariableLinks links) {
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
    AdamVariable adamVariable = (AdamVariable) o;
    return Objects.equals(this.ordinal, adamVariable.ordinal) &&
        Objects.equals(this.name, adamVariable.name) &&
        Objects.equals(this.label, adamVariable.label) &&
        Objects.equals(this.description, adamVariable.description) &&
        Objects.equals(this.core, adamVariable.core) &&
        Objects.equals(this.simpleDatatype, adamVariable.simpleDatatype) &&
        Objects.equals(this.describedValueDomain, adamVariable.describedValueDomain) &&
        Objects.equals(this.valueList, adamVariable.valueList) &&
        Objects.equals(this.links, adamVariable.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, core, simpleDatatype, describedValueDomain, valueList, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamVariable {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    core: ").append(toIndentedString(core)).append("\n");
    sb.append("    simpleDatatype: ").append(toIndentedString(simpleDatatype)).append("\n");
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

