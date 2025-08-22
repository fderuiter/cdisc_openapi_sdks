package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigScenarioField;
import org.openapitools.model.CdashigScenarioLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigScenario  {
  
  @ApiModelProperty(example = "19", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Vital Signs", value = "")
  private String domain;

  @ApiModelProperty(example = "VS - Implementation Options: HorizontalGeneric", value = "")
  private String scenario;

  @ApiModelProperty(value = "")
  private CdashigScenarioLinks links;

  @ApiModelProperty(value = "")
  private List<CdashigScenarioField> fields = new ArrayList<>();
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

  public CdashigScenario ordinal(String ordinal) {
    this.ordinal = ordinal;
    return this;
  }

 /**
   * Get domain
   * @return domain
  **/
  @JsonProperty("domain")
  public String getDomain() {
    return domain;
  }

  public void setDomain(String domain) {
    this.domain = domain;
  }

  public CdashigScenario domain(String domain) {
    this.domain = domain;
    return this;
  }

 /**
   * Get scenario
   * @return scenario
  **/
  @JsonProperty("scenario")
  public String getScenario() {
    return scenario;
  }

  public void setScenario(String scenario) {
    this.scenario = scenario;
  }

  public CdashigScenario scenario(String scenario) {
    this.scenario = scenario;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigScenarioLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigScenarioLinks links) {
    this.links = links;
  }

  public CdashigScenario links(CdashigScenarioLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<CdashigScenarioField> getFields() {
    return fields;
  }

  public void setFields(List<CdashigScenarioField> fields) {
    this.fields = fields;
  }

  public CdashigScenario fields(List<CdashigScenarioField> fields) {
    this.fields = fields;
    return this;
  }

  public CdashigScenario addFieldsItem(CdashigScenarioField fieldsItem) {
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
    CdashigScenario cdashigScenario = (CdashigScenario) o;
    return Objects.equals(this.ordinal, cdashigScenario.ordinal) &&
        Objects.equals(this.domain, cdashigScenario.domain) &&
        Objects.equals(this.scenario, cdashigScenario.scenario) &&
        Objects.equals(this.links, cdashigScenario.links) &&
        Objects.equals(this.fields, cdashigScenario.fields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, domain, scenario, links, fields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigScenario {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    domain: ").append(toIndentedString(domain)).append("\n");
    sb.append("    scenario: ").append(toIndentedString(scenario)).append("\n");
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

