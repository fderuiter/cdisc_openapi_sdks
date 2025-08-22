package org.openapitools.model;

import org.openapitools.model.CdashigScenarioFieldsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigScenarioFields  {
  
  @ApiModelProperty(example = "19", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Vital Signs", value = "")
  private String domain;

  @ApiModelProperty(example = "VS - Implementation Options: HorizontalGeneric", value = "")
  private String scenario;

  @ApiModelProperty(value = "")
  private CdashigScenarioFieldsLinks links;
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

  public CdashigScenarioFields ordinal(String ordinal) {
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

  public CdashigScenarioFields domain(String domain) {
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

  public CdashigScenarioFields scenario(String scenario) {
    this.scenario = scenario;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigScenarioFieldsLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigScenarioFieldsLinks links) {
    this.links = links;
  }

  public CdashigScenarioFields links(CdashigScenarioFieldsLinks links) {
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
    CdashigScenarioFields cdashigScenarioFields = (CdashigScenarioFields) o;
    return Objects.equals(this.ordinal, cdashigScenarioFields.ordinal) &&
        Objects.equals(this.domain, cdashigScenarioFields.domain) &&
        Objects.equals(this.scenario, cdashigScenarioFields.scenario) &&
        Objects.equals(this.links, cdashigScenarioFields.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, domain, scenario, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigScenarioFields {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    domain: ").append(toIndentedString(domain)).append("\n");
    sb.append("    scenario: ").append(toIndentedString(scenario)).append("\n");
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

