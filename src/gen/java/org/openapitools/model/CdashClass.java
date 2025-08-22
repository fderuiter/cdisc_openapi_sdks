package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassField;
import org.openapitools.model.CdashClassLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashClass  {
  
  @ApiModelProperty(example = "5", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Timing", value = "")
  private String name;

  @ApiModelProperty(example = "Timing Class", value = "")
  private String label;

  @ApiModelProperty(example = "Timing class variables", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private CdashClassLinks links;

  @ApiModelProperty(value = "")
  private List<CdashClassField> cdashModelFields = new ArrayList<>();
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

  public CdashClass ordinal(String ordinal) {
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

  public CdashClass name(String name) {
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

  public CdashClass label(String label) {
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

  public CdashClass description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashClassLinks getLinks() {
    return links;
  }

  public void setLinks(CdashClassLinks links) {
    this.links = links;
  }

  public CdashClass links(CdashClassLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get cdashModelFields
   * @return cdashModelFields
  **/
  @JsonProperty("cdashModelFields")
  public List<CdashClassField> getCdashModelFields() {
    return cdashModelFields;
  }

  public void setCdashModelFields(List<CdashClassField> cdashModelFields) {
    this.cdashModelFields = cdashModelFields;
  }

  public CdashClass cdashModelFields(List<CdashClassField> cdashModelFields) {
    this.cdashModelFields = cdashModelFields;
    return this;
  }

  public CdashClass addCdashModelFieldsItem(CdashClassField cdashModelFieldsItem) {
    this.cdashModelFields.add(cdashModelFieldsItem);
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
    CdashClass cdashClass = (CdashClass) o;
    return Objects.equals(this.ordinal, cdashClass.ordinal) &&
        Objects.equals(this.name, cdashClass.name) &&
        Objects.equals(this.label, cdashClass.label) &&
        Objects.equals(this.description, cdashClass.description) &&
        Objects.equals(this.links, cdashClass.links) &&
        Objects.equals(this.cdashModelFields, cdashClass.cdashModelFields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links, cdashModelFields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashClass {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    cdashModelFields: ").append(toIndentedString(cdashModelFields)).append("\n");
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

