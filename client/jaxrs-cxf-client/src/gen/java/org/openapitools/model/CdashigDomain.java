package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigDomainField;
import org.openapitools.model.CdashigDomainLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigDomain  {
  
  @ApiModelProperty(example = "31", value = "")
  private String ordinal;

  @ApiModelProperty(example = "VS", value = "")
  private String name;

  @ApiModelProperty(example = "Vital Signs", value = "")
  private String label;

  @ApiModelProperty(value = "")
  private CdashigDomainLinks links;

  @ApiModelProperty(value = "")
  private List<CdashigDomainField> fields = new ArrayList<>();
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

  public CdashigDomain ordinal(String ordinal) {
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

  public CdashigDomain name(String name) {
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

  public CdashigDomain label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigDomainLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigDomainLinks links) {
    this.links = links;
  }

  public CdashigDomain links(CdashigDomainLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<CdashigDomainField> getFields() {
    return fields;
  }

  public void setFields(List<CdashigDomainField> fields) {
    this.fields = fields;
  }

  public CdashigDomain fields(List<CdashigDomainField> fields) {
    this.fields = fields;
    return this;
  }

  public CdashigDomain addFieldsItem(CdashigDomainField fieldsItem) {
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
    CdashigDomain cdashigDomain = (CdashigDomain) o;
    return Objects.equals(this.ordinal, cdashigDomain.ordinal) &&
        Objects.equals(this.name, cdashigDomain.name) &&
        Objects.equals(this.label, cdashigDomain.label) &&
        Objects.equals(this.links, cdashigDomain.links) &&
        Objects.equals(this.fields, cdashigDomain.fields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, links, fields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigDomain {\n");
    
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

