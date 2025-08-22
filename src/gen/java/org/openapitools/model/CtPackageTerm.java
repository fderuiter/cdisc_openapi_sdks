package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackageTerm  {
  
  @ApiModelProperty(example = "C64796", value = "")
  private String conceptId;

  @ApiModelProperty(example = "Hematocrit", value = "")
  private String submissionValue;

  @ApiModelProperty(example = "The percentage of a whole blood specimen that is composed of red blood cells (erythrocytes).", value = "")
  private String definition;

  @ApiModelProperty(example = "Hematocrit Measurement", value = "")
  private String preferredTerm;

  @ApiModelProperty(example = "[\"EVF\",\"Erythrocyte Volume Fraction\",\"Hematocrit\",\"PCV\",\"Packed Cell Volume\"]", value = "")
  private List<String> synonyms = new ArrayList<>();
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

  public CtPackageTerm conceptId(String conceptId) {
    this.conceptId = conceptId;
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

  public CtPackageTerm submissionValue(String submissionValue) {
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

  public CtPackageTerm definition(String definition) {
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

  public CtPackageTerm preferredTerm(String preferredTerm) {
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

  public CtPackageTerm synonyms(List<String> synonyms) {
    this.synonyms = synonyms;
    return this;
  }

  public CtPackageTerm addSynonymsItem(String synonymsItem) {
    this.synonyms.add(synonymsItem);
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
    CtPackageTerm ctPackageTerm = (CtPackageTerm) o;
    return Objects.equals(this.conceptId, ctPackageTerm.conceptId) &&
        Objects.equals(this.submissionValue, ctPackageTerm.submissionValue) &&
        Objects.equals(this.definition, ctPackageTerm.definition) &&
        Objects.equals(this.preferredTerm, ctPackageTerm.preferredTerm) &&
        Objects.equals(this.synonyms, ctPackageTerm.synonyms);
  }

  @Override
  public int hashCode() {
    return Objects.hash(conceptId, submissionValue, definition, preferredTerm, synonyms);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackageTerm {\n");
    
    sb.append("    conceptId: ").append(toIndentedString(conceptId)).append("\n");
    sb.append("    submissionValue: ").append(toIndentedString(submissionValue)).append("\n");
    sb.append("    definition: ").append(toIndentedString(definition)).append("\n");
    sb.append("    preferredTerm: ").append(toIndentedString(preferredTerm)).append("\n");
    sb.append("    synonyms: ").append(toIndentedString(synonyms)).append("\n");
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

