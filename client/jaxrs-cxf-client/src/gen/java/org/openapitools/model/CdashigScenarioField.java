package org.openapitools.model;

import org.openapitools.model.CdashigScenarioFieldLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigScenarioField  {
  
  @ApiModelProperty(example = "7", value = "")
  private String ordinal;

  @ApiModelProperty(example = "[VSTESTCD]_VSDAT", value = "")
  private String name;

  @ApiModelProperty(example = "Vital Signs Date", value = "")
  private String label;

  @ApiModelProperty(example = "The date of the vital signs measurement, represented in an unambiguous date format (e.g., DD-MON-YYYY).", value = "")
  private String definition;

  @ApiModelProperty(example = "What was the date of the measurement(s)?", value = "")
  private String questionText;

  @ApiModelProperty(example = "[VSTEST] Date", value = "")
  private String prompt;

  @ApiModelProperty(example = "Record date of measurements using this format (DD-MON-YYYY).", value = "")
  private String completionInstructions;

  @ApiModelProperty(example = "A single date may be collected for all the vital sign measurements when they are performed on the same date. The date of each measurement can also be collected for each measurement using a CDASH variable [VSTESTCD]_VSDAT. The date of the measurements may be determined from a collected date of visit and in such cases a separate measurement date field is not required.", value = "")
  private String implementationNotes;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "This does not map directly to an SDTMIG variable. For the SDTM submission dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTMIG variable VSDTC in ISO 8601 format.", value = "")
  private String mappingInstructions;

  @ApiModelProperty(example = "R/C", value = "")
  private String core;

  @ApiModelProperty(value = "")
  private CdashigScenarioFieldLinks links;
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

  public CdashigScenarioField ordinal(String ordinal) {
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

  public CdashigScenarioField name(String name) {
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

  public CdashigScenarioField label(String label) {
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

  public CdashigScenarioField definition(String definition) {
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

  public CdashigScenarioField questionText(String questionText) {
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

  public CdashigScenarioField prompt(String prompt) {
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

  public CdashigScenarioField completionInstructions(String completionInstructions) {
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

  public CdashigScenarioField implementationNotes(String implementationNotes) {
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

  public CdashigScenarioField simpleDatatype(String simpleDatatype) {
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

  public CdashigScenarioField mappingInstructions(String mappingInstructions) {
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

  public CdashigScenarioField core(String core) {
    this.core = core;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashigScenarioFieldLinks getLinks() {
    return links;
  }

  public void setLinks(CdashigScenarioFieldLinks links) {
    this.links = links;
  }

  public CdashigScenarioField links(CdashigScenarioFieldLinks links) {
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
    CdashigScenarioField cdashigScenarioField = (CdashigScenarioField) o;
    return Objects.equals(this.ordinal, cdashigScenarioField.ordinal) &&
        Objects.equals(this.name, cdashigScenarioField.name) &&
        Objects.equals(this.label, cdashigScenarioField.label) &&
        Objects.equals(this.definition, cdashigScenarioField.definition) &&
        Objects.equals(this.questionText, cdashigScenarioField.questionText) &&
        Objects.equals(this.prompt, cdashigScenarioField.prompt) &&
        Objects.equals(this.completionInstructions, cdashigScenarioField.completionInstructions) &&
        Objects.equals(this.implementationNotes, cdashigScenarioField.implementationNotes) &&
        Objects.equals(this.simpleDatatype, cdashigScenarioField.simpleDatatype) &&
        Objects.equals(this.mappingInstructions, cdashigScenarioField.mappingInstructions) &&
        Objects.equals(this.core, cdashigScenarioField.core) &&
        Objects.equals(this.links, cdashigScenarioField.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, definition, questionText, prompt, completionInstructions, implementationNotes, simpleDatatype, mappingInstructions, core, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigScenarioField {\n");
    
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

