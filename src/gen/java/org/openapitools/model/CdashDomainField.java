package org.openapitools.model;

import org.openapitools.model.CdashDomainFieldLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashDomainField  {
  
  @ApiModelProperty(example = "18", value = "")
  private String ordinal;

  @ApiModelProperty(example = "AGE", value = "")
  private String name;

  @ApiModelProperty(example = "Age", value = "")
  private String label;

  @ApiModelProperty(example = "The age of the subject expressed in AGEU.", value = "")
  private String definition;

  @ApiModelProperty(example = "", value = "")
  private String domainSpecific;

  @ApiModelProperty(example = "What [is/was] the subject's age?", value = "")
  private String questionText;

  @ApiModelProperty(example = "Age", value = "")
  private String prompt;

  @ApiModelProperty(example = "Num", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "If Age is collected, it should be collected as a number and, to be correctly interpreted, the age value should be associated to a variable for the Age Unit. It may be necessary to know when the age was collected as an age may need to be recalculated for analysis, such as deriving age at a reference start time (RFSTDTC for SDTM). BRTHDTC may not be available in all cases (due to subject privacy concerns). If AGE is collected, then it is recommended that the date of collection also be recorded, either separately or by association to the date of the visit.", value = "")
  private String implementationNotes;

  @ApiModelProperty(example = "Maps directly to the SDTM variable listed in the column with the heading \"SDTM Target\".", value = "")
  private String mappingInstructions;

  @ApiModelProperty(value = "")
  private CdashDomainFieldLinks links;
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

  public CdashDomainField ordinal(String ordinal) {
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

  public CdashDomainField name(String name) {
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

  public CdashDomainField label(String label) {
    this.label = label;
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

  public CdashDomainField definition(String definition) {
    this.definition = definition;
    return this;
  }

 /**
   * Get domainSpecific
   * @return domainSpecific
  **/
  @JsonProperty("domainSpecific")
  public String getDomainSpecific() {
    return domainSpecific;
  }

  public void setDomainSpecific(String domainSpecific) {
    this.domainSpecific = domainSpecific;
  }

  public CdashDomainField domainSpecific(String domainSpecific) {
    this.domainSpecific = domainSpecific;
    return this;
  }

 /**
   * Get questionText
   * @return questionText
  **/
  @JsonProperty("questionText")
  public String getQuestionText() {
    return questionText;
  }

  public void setQuestionText(String questionText) {
    this.questionText = questionText;
  }

  public CdashDomainField questionText(String questionText) {
    this.questionText = questionText;
    return this;
  }

 /**
   * Get prompt
   * @return prompt
  **/
  @JsonProperty("prompt")
  public String getPrompt() {
    return prompt;
  }

  public void setPrompt(String prompt) {
    this.prompt = prompt;
  }

  public CdashDomainField prompt(String prompt) {
    this.prompt = prompt;
    return this;
  }

 /**
   * Get simpleDatatype
   * @return simpleDatatype
  **/
  @JsonProperty("simpleDatatype")
  public String getSimpleDatatype() {
    return simpleDatatype;
  }

  public void setSimpleDatatype(String simpleDatatype) {
    this.simpleDatatype = simpleDatatype;
  }

  public CdashDomainField simpleDatatype(String simpleDatatype) {
    this.simpleDatatype = simpleDatatype;
    return this;
  }

 /**
   * Get implementationNotes
   * @return implementationNotes
  **/
  @JsonProperty("implementationNotes")
  public String getImplementationNotes() {
    return implementationNotes;
  }

  public void setImplementationNotes(String implementationNotes) {
    this.implementationNotes = implementationNotes;
  }

  public CdashDomainField implementationNotes(String implementationNotes) {
    this.implementationNotes = implementationNotes;
    return this;
  }

 /**
   * Get mappingInstructions
   * @return mappingInstructions
  **/
  @JsonProperty("mappingInstructions")
  public String getMappingInstructions() {
    return mappingInstructions;
  }

  public void setMappingInstructions(String mappingInstructions) {
    this.mappingInstructions = mappingInstructions;
  }

  public CdashDomainField mappingInstructions(String mappingInstructions) {
    this.mappingInstructions = mappingInstructions;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashDomainFieldLinks getLinks() {
    return links;
  }

  public void setLinks(CdashDomainFieldLinks links) {
    this.links = links;
  }

  public CdashDomainField links(CdashDomainFieldLinks links) {
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
    CdashDomainField cdashDomainField = (CdashDomainField) o;
    return Objects.equals(this.ordinal, cdashDomainField.ordinal) &&
        Objects.equals(this.name, cdashDomainField.name) &&
        Objects.equals(this.label, cdashDomainField.label) &&
        Objects.equals(this.definition, cdashDomainField.definition) &&
        Objects.equals(this.domainSpecific, cdashDomainField.domainSpecific) &&
        Objects.equals(this.questionText, cdashDomainField.questionText) &&
        Objects.equals(this.prompt, cdashDomainField.prompt) &&
        Objects.equals(this.simpleDatatype, cdashDomainField.simpleDatatype) &&
        Objects.equals(this.implementationNotes, cdashDomainField.implementationNotes) &&
        Objects.equals(this.mappingInstructions, cdashDomainField.mappingInstructions) &&
        Objects.equals(this.links, cdashDomainField.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, definition, domainSpecific, questionText, prompt, simpleDatatype, implementationNotes, mappingInstructions, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashDomainField {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    definition: ").append(toIndentedString(definition)).append("\n");
    sb.append("    domainSpecific: ").append(toIndentedString(domainSpecific)).append("\n");
    sb.append("    questionText: ").append(toIndentedString(questionText)).append("\n");
    sb.append("    prompt: ").append(toIndentedString(prompt)).append("\n");
    sb.append("    simpleDatatype: ").append(toIndentedString(simpleDatatype)).append("\n");
    sb.append("    implementationNotes: ").append(toIndentedString(implementationNotes)).append("\n");
    sb.append("    mappingInstructions: ").append(toIndentedString(mappingInstructions)).append("\n");
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

