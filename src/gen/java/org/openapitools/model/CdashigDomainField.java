package org.openapitools.model;

import org.openapitools.model.CdashigDomainFieldLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigDomainField  {
  
  @ApiModelProperty(example = "7", value = "")
  private String ordinal;

  @ApiModelProperty(example = "VSDAT", value = "")
  private String name;

  @ApiModelProperty(example = "Vital Signs Date", value = "")
  private String label;

  @ApiModelProperty(example = "The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).", value = "")
  private String definition;

  @ApiModelProperty(example = "What was the date of the vital signs measurement?", value = "")
  private String questionText;

  @ApiModelProperty(example = "Date", value = "")
  private String prompt;

  @ApiModelProperty(example = "Record date of measurements using this format (DD-MON-YYYY).", value = "")
  private String completionInstructions;

  @ApiModelProperty(example = "The date of measurement can be determined from a collected date of visit (VISDAT) and in such cases a separate measurement date field is not required.", value = "")
  private String implementationNotes;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.", value = "")
  private String mappingInstructions;

  @ApiModelProperty(example = "R/C", value = "")
  private String core;

  @ApiModelProperty(value = "")
  private CdashigDomainFieldLinks links;
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

  public CdashigDomainField ordinal(String ordinal) {
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

  public CdashigDomainField name(String name) {
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

  public CdashigDomainField label(String label) {
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

  public CdashigDomainField definition(String definition) {
    this.definition = definition;
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

  public CdashigDomainField questionText(String questionText) {
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

  public CdashigDomainField prompt(String prompt) {
    this.prompt = prompt;
    return this;
  }

 /**
   * Get completionInstructions
   * @return completionInstructions
  **/
  @JsonProperty("completionInstructions")
  public String getCompletionInstructions() {
    return completionInstructions;
  }

  public void setCompletionInstructions(String completionInstructions) {
    this.completionInstructions = completionInstructions;
  }

  public CdashigDomainField completionInstructions(String completionInstructions) {
    this.completionInstructions = completionInstructions;
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

  public CdashigDomainField implementationNotes(String implementationNotes) {
    this.implementationNotes = implementationNotes;
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

  public CdashigDomainField simpleDatatype(String simpleDatatype) {
    this.simpleDatatype = simpleDatatype;
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

  public CdashigDomainField mappingInstructions(String mappingInstructions) {
    this.mappingInstructions = mappingInstructions;
    return this;
  }

 /**
   * Get core
   * @return core
  **/
  @JsonProperty("core")
  public String getCore() {
    return core;
  }

  public void setCore(String core) {
    this.core = core;
  }

  public CdashigDomainField core(String core) {
    this.core = core;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigDomainFieldLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigDomainFieldLinks links) {
    this.links = links;
  }

  public CdashigDomainField links(CdashigDomainFieldLinks links) {
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
    CdashigDomainField cdashigDomainField = (CdashigDomainField) o;
    return Objects.equals(this.ordinal, cdashigDomainField.ordinal) &&
        Objects.equals(this.name, cdashigDomainField.name) &&
        Objects.equals(this.label, cdashigDomainField.label) &&
        Objects.equals(this.definition, cdashigDomainField.definition) &&
        Objects.equals(this.questionText, cdashigDomainField.questionText) &&
        Objects.equals(this.prompt, cdashigDomainField.prompt) &&
        Objects.equals(this.completionInstructions, cdashigDomainField.completionInstructions) &&
        Objects.equals(this.implementationNotes, cdashigDomainField.implementationNotes) &&
        Objects.equals(this.simpleDatatype, cdashigDomainField.simpleDatatype) &&
        Objects.equals(this.mappingInstructions, cdashigDomainField.mappingInstructions) &&
        Objects.equals(this.core, cdashigDomainField.core) &&
        Objects.equals(this.links, cdashigDomainField.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, definition, questionText, prompt, completionInstructions, implementationNotes, simpleDatatype, mappingInstructions, core, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigDomainField {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    definition: ").append(toIndentedString(definition)).append("\n");
    sb.append("    questionText: ").append(toIndentedString(questionText)).append("\n");
    sb.append("    prompt: ").append(toIndentedString(prompt)).append("\n");
    sb.append("    completionInstructions: ").append(toIndentedString(completionInstructions)).append("\n");
    sb.append("    implementationNotes: ").append(toIndentedString(implementationNotes)).append("\n");
    sb.append("    simpleDatatype: ").append(toIndentedString(simpleDatatype)).append("\n");
    sb.append("    mappingInstructions: ").append(toIndentedString(mappingInstructions)).append("\n");
    sb.append("    core: ").append(toIndentedString(core)).append("\n");
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

