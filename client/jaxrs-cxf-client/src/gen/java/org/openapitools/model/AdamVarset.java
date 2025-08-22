package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AdamVariable;
import org.openapitools.model.AdamVarsetLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamVarset  {
  
  @ApiModelProperty(example = "1", value = "")
  private String ordinal;

  @ApiModelProperty(example = "ADSL", value = "")
  private String name;

  @ApiModelProperty(example = "Subject-Level Analysis Dataset Structure", value = "")
  private String label;

  @ApiModelProperty(example = "One record per subject.", value = "")
  private String description;

  @ApiModelProperty(value = "")
  private AdamVarsetLinks links;

  @ApiModelProperty(value = "")
  private List<AdamVariable> analysisVariables = new ArrayList<>();
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

  public AdamVarset ordinal(String ordinal) {
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

  public AdamVarset name(String name) {
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

  public AdamVarset label(String label) {
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

  public AdamVarset description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public AdamVarsetLinks getLinks() {
    return links;
  }

  public void setLinks(AdamVarsetLinks links) {
    this.links = links;
  }

  public AdamVarset links(AdamVarsetLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get analysisVariables
   * @return analysisVariables
  **/
  @JsonProperty("analysisVariables")
  public List<AdamVariable> getAnalysisVariables() {
    return analysisVariables;
  }

  public void setAnalysisVariables(List<AdamVariable> analysisVariables) {
    this.analysisVariables = analysisVariables;
  }

  public AdamVarset analysisVariables(List<AdamVariable> analysisVariables) {
    this.analysisVariables = analysisVariables;
    return this;
  }

  public AdamVarset addAnalysisVariablesItem(AdamVariable analysisVariablesItem) {
    this.analysisVariables.add(analysisVariablesItem);
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
    AdamVarset adamVarset = (AdamVarset) o;
    return Objects.equals(this.ordinal, adamVarset.ordinal) &&
        Objects.equals(this.name, adamVarset.name) &&
        Objects.equals(this.label, adamVarset.label) &&
        Objects.equals(this.description, adamVarset.description) &&
        Objects.equals(this.links, adamVarset.links) &&
        Objects.equals(this.analysisVariables, adamVarset.analysisVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, description, links, analysisVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamVarset {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    analysisVariables: ").append(toIndentedString(analysisVariables)).append("\n");
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

