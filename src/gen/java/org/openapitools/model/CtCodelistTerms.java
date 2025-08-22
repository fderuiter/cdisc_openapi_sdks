package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtCodelistTermsLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtCodelistTerms  {
  
  @ApiModelProperty(example = "C67154", value = "")
  private String conceptId;

  @ApiModelProperty(example = "true", value = "")
  private String extensible;

  @ApiModelProperty(example = "Laboratory Test Name", value = "")
  private String name;

  @ApiModelProperty(example = "LBTEST", value = "")
  private String submissionValue;

  @ApiModelProperty(example = "Terminology used for laboratory test names of the CDISC Study Data Tabulation Model.", value = "")
  private String definition;

  @ApiModelProperty(example = "CDISC SDTM Laboratory Test Name Terminology", value = "")
  private String preferredTerm;

  @ApiModelProperty(example = "[\"Laboratory Test Name\"]", value = "")
  private List<String> synonyms = new ArrayList<>();

  @ApiModelProperty(value = "")
  private CtCodelistTermsLinks links;
 /**
   * Get conceptId
   * @return conceptId
  **/
  @JsonProperty("conceptId")
  public String getConceptId() {
    return conceptId;
  }

  public void setConceptId(String conceptId) {
    this.conceptId = conceptId;
  }

  public CtCodelistTerms conceptId(String conceptId) {
    this.conceptId = conceptId;
    return this;
  }

 /**
   * Get extensible
   * @return extensible
  **/
  @JsonProperty("extensible")
  public String getExtensible() {
    return extensible;
  }

  public void setExtensible(String extensible) {
    this.extensible = extensible;
  }

  public CtCodelistTerms extensible(String extensible) {
    this.extensible = extensible;
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

  public CtCodelistTerms name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get submissionValue
   * @return submissionValue
  **/
  @JsonProperty("submissionValue")
  public String getSubmissionValue() {
    return submissionValue;
  }

  public void setSubmissionValue(String submissionValue) {
    this.submissionValue = submissionValue;
  }

  public CtCodelistTerms submissionValue(String submissionValue) {
    this.submissionValue = submissionValue;
    return this;
  }

 /**
   * Get definition
   * @return definition
  **/
  @JsonProperty("definition")
  public String getDefinition() {
    return definition;
  }

  public void setDefinition(String definition) {
    this.definition = definition;
  }

  public CtCodelistTerms definition(String definition) {
    this.definition = definition;
    return this;
  }

 /**
   * Get preferredTerm
   * @return preferredTerm
  **/
  @JsonProperty("preferredTerm")
  public String getPreferredTerm() {
    return preferredTerm;
  }

  public void setPreferredTerm(String preferredTerm) {
    this.preferredTerm = preferredTerm;
  }

  public CtCodelistTerms preferredTerm(String preferredTerm) {
    this.preferredTerm = preferredTerm;
    return this;
  }

 /**
   * Get synonyms
   * @return synonyms
  **/
  @JsonProperty("synonyms")
  public List<String> getSynonyms() {
    return synonyms;
  }

  public void setSynonyms(List<String> synonyms) {
    this.synonyms = synonyms;
  }

  public CtCodelistTerms synonyms(List<String> synonyms) {
    this.synonyms = synonyms;
    return this;
  }

  public CtCodelistTerms addSynonymsItem(String synonymsItem) {
    this.synonyms.add(synonymsItem);
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CtCodelistTermsLinks getLinks() {
    return links;
  }

  public void setLinks(CtCodelistTermsLinks links) {
    this.links = links;
  }

  public CtCodelistTerms links(CtCodelistTermsLinks links) {
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
    CtCodelistTerms ctCodelistTerms = (CtCodelistTerms) o;
    return Objects.equals(this.conceptId, ctCodelistTerms.conceptId) &&
        Objects.equals(this.extensible, ctCodelistTerms.extensible) &&
        Objects.equals(this.name, ctCodelistTerms.name) &&
        Objects.equals(this.submissionValue, ctCodelistTerms.submissionValue) &&
        Objects.equals(this.definition, ctCodelistTerms.definition) &&
        Objects.equals(this.preferredTerm, ctCodelistTerms.preferredTerm) &&
        Objects.equals(this.synonyms, ctCodelistTerms.synonyms) &&
        Objects.equals(this.links, ctCodelistTerms.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(conceptId, extensible, name, submissionValue, definition, preferredTerm, synonyms, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtCodelistTerms {\n");
    
    sb.append("    conceptId: ").append(toIndentedString(conceptId)).append("\n");
    sb.append("    extensible: ").append(toIndentedString(extensible)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    submissionValue: ").append(toIndentedString(submissionValue)).append("\n");
    sb.append("    definition: ").append(toIndentedString(definition)).append("\n");
    sb.append("    preferredTerm: ").append(toIndentedString(preferredTerm)).append("\n");
    sb.append("    synonyms: ").append(toIndentedString(synonyms)).append("\n");
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

