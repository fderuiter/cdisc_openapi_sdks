package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassLinks;
import org.openapitools.model.CdashigDomain;
import org.openapitools.model.CdashigScenario;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigClass  {
  
  @ApiModelProperty(example = "4", value = "")
  private String ordinal;

  @ApiModelProperty(example = "Findings", value = "")
  private String name;

  @ApiModelProperty(example = "Findings", value = "")
  private String label;

  @ApiModelProperty(example = "The Findings class includes CDASH domains that define collection standards for results from evaluations such as physical examinations, laboratory tests, electrocardiogram (ECG) testing, and responses to questionnaires. (Source: CDASHIG v2.1, Section 8.3)", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private CdashigClassLinks links;

  @ApiModelProperty(value = "")
  private List<CdashigDomain> domains = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<CdashigScenario> scenarios = new ArrayList<>();
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

  public CdashigClass ordinal(String ordinal) {
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

  public CdashigClass name(String name) {
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

  public CdashigClass label(String label) {
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

  public CdashigClass description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigClassLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigClassLinks links) {
    this.links = links;
  }

  public CdashigClass links(CdashigClassLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get domains
   * @return domains
  **/
  @JsonProperty("domains")
  public List<CdashigDomain> getDomains() {
    return domains;
  }

  public void setDomains(List<CdashigDomain> domains) {
    this.domains = domains;
  }

  public CdashigClass domains(List<CdashigDomain> domains) {
    this.domains = domains;
    return this;
  }

  public CdashigClass addDomainsItem(CdashigDomain domainsItem) {
    this.domains.add(domainsItem);
    return this;
  }

 /**
   * Get scenarios
   * @return scenarios
  **/
  @JsonProperty("scenarios")
  public List<CdashigScenario> getScenarios() {
    return scenarios;
  }

  public void setScenarios(List<CdashigScenario> scenarios) {
    this.scenarios = scenarios;
  }

  public CdashigClass scenarios(List<CdashigScenario> scenarios) {
    this.scenarios = scenarios;
    return this;
  }

  public CdashigClass addScenariosItem(CdashigScenario scenariosItem) {
    this.scenarios.add(scenariosItem);
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
    CdashigClass cdashigClass = (CdashigClass) o;
    return Objects.equals(this.ordinal, cdashigClass.ordinal) &&
        Objects.equals(this.name, cdashigClass.name) &&
        Objects.equals(this.label, cdashigClass.label) &&
        Objects.equals(this.description, cdashigClass.description) &&
        Objects.equals(this.links, cdashigClass.links) &&
        Objects.equals(this.domains, cdashigClass.domains) &&
        Objects.equals(this.scenarios, cdashigClass.scenarios);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links, domains, scenarios);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigClass {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    domains: ").append(toIndentedString(domains)).append("\n");
    sb.append("    scenarios: ").append(toIndentedString(scenarios)).append("\n");
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

