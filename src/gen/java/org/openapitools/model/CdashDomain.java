package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashDomainField;
import org.openapitools.model.CdashDomainLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashDomain  {
  
  @ApiModelProperty(example = "4", value = "")
  private String ordinal;

  @ApiModelProperty(example = "DM", value = "")
  private String name;

  @ApiModelProperty(example = "Demographics", value = "")
  private String label;

  @ApiModelProperty(value = "")
  private CdashDomainLinks links;

  @ApiModelProperty(value = "")
  private List<CdashDomainField> fields = new ArrayList<>();
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

  public CdashDomain ordinal(String ordinal) {
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

  public CdashDomain name(String name) {
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

  public CdashDomain label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashDomainLinks getLinks() {
    return links;
  }

  public void setLinks(CdashDomainLinks links) {
    this.links = links;
  }

  public CdashDomain links(CdashDomainLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<CdashDomainField> getFields() {
    return fields;
  }

  public void setFields(List<CdashDomainField> fields) {
    this.fields = fields;
  }

  public CdashDomain fields(List<CdashDomainField> fields) {
    this.fields = fields;
    return this;
  }

  public CdashDomain addFieldsItem(CdashDomainField fieldsItem) {
    this.fields.add(fieldsItem);
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
    CdashDomain cdashDomain = (CdashDomain) o;
    return Objects.equals(this.ordinal, cdashDomain.ordinal) &&
        Objects.equals(this.name, cdashDomain.name) &&
        Objects.equals(this.label, cdashDomain.label) &&
        Objects.equals(this.links, cdashDomain.links) &&
        Objects.equals(this.fields, cdashDomain.fields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, links, fields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashDomain {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    fields: ").append(toIndentedString(fields)).append("\n");
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

