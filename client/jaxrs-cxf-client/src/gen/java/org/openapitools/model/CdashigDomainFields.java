package org.openapitools.model;

import org.openapitools.model.CdashigDomainFieldsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigDomainFields  {
  
  @ApiModelProperty(example = "31", value = "")
  private String ordinal;

  @ApiModelProperty(example = "VS", value = "")
  private String name;

  @ApiModelProperty(example = "Vital Signs", value = "")
  private String label;

  @ApiModelProperty(value = "")
  private CdashigDomainFieldsLinks links;
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

  public CdashigDomainFields ordinal(String ordinal) {
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

  public CdashigDomainFields name(String name) {
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

  public CdashigDomainFields label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigDomainFieldsLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigDomainFieldsLinks links) {
    this.links = links;
  }

  public CdashigDomainFields links(CdashigDomainFieldsLinks links) {
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
    CdashigDomainFields cdashigDomainFields = (CdashigDomainFields) o;
    return Objects.equals(this.ordinal, cdashigDomainFields.ordinal) &&
        Objects.equals(this.name, cdashigDomainFields.name) &&
        Objects.equals(this.label, cdashigDomainFields.label) &&
        Objects.equals(this.links, cdashigDomainFields.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigDomainFields {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
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

