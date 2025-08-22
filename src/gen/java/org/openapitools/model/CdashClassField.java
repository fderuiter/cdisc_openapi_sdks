package org.openapitools.model;

import org.openapitools.model.CdashClassFieldLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashClassField  {
  
  @ApiModelProperty(example = "8", value = "")
  private String ordinal;

  @ApiModelProperty(example = "--DAT", value = "")
  private String name;

  @ApiModelProperty(example = "Collection Date", value = "")
  private String label;

  @ApiModelProperty(example = "Collection date of an observation.", value = "")
  private String definition;

  @ApiModelProperty(example = "What [is/was] the date the [event or intervention] [is/was] collected?; What [is/was] the (start) date (of the [Finding])?", value = "")
  private String questionText;

  @ApiModelProperty(example = "[Event/Intervention] Collection Date; [Finding] (Start) Date", value = "")
  private String prompt;

  @ApiModelProperty(example = "Char", value = "")
  private String simpleDatatype;

  @ApiModelProperty(example = "This is a generic DATE field that can be implemented in a system that will store partial dates. Use this for: 1. Date of data collection, 2. Visit date, 3. Visit start date, 4. Point in time collection (e.g., vital signs measurements, lab sample collection date), 5. Start date for interval collection of measurements or tests (e.g., start date of a 24-hour urine collection). Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) are included in the SDTM", value = "")
  private String implementationNotes;

  @ApiModelProperty(example = "This field does not map directly to an SDTM variable. For the SDTM dataset, concatenate all collected CDASH DATE and TIME components and populate the SDTM variable --DTC in ISO 8601 format. Refer to the FDA Study Data Technical Conformance Guide v2.2 (June 12, 2015) Section 4.1.4.1 which indicates that when dates have the role of a timing variable, the matching Study Day variables (--DY, --STDY, or --ENDY, respectively) should be included in the SDTM dataset.", value = "")
  private String mappingInstructions;

  @ApiModelProperty(value = "")
  private CdashClassFieldLinks links;
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

  public CdashClassField ordinal(String ordinal) {
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

  public CdashClassField name(String name) {
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

  public CdashClassField label(String label) {
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

  public CdashClassField definition(String definition) {
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

  public CdashClassField questionText(String questionText) {
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

  public CdashClassField prompt(String prompt) {
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

  public CdashClassField simpleDatatype(String simpleDatatype) {
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

  public CdashClassField implementationNotes(String implementationNotes) {
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

  public CdashClassField mappingInstructions(String mappingInstructions) {
    this.mappingInstructions = mappingInstructions;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public CdashClassFieldLinks getLinks() {
    return links;
  }

  public void setLinks(CdashClassFieldLinks links) {
    this.links = links;
  }

  public CdashClassField links(CdashClassFieldLinks links) {
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
    CdashClassField cdashClassField = (CdashClassField) o;
    return Objects.equals(this.ordinal, cdashClassField.ordinal) &&
        Objects.equals(this.name, cdashClassField.name) &&
        Objects.equals(this.label, cdashClassField.label) &&
        Objects.equals(this.definition, cdashClassField.definition) &&
        Objects.equals(this.questionText, cdashClassField.questionText) &&
        Objects.equals(this.prompt, cdashClassField.prompt) &&
        Objects.equals(this.simpleDatatype, cdashClassField.simpleDatatype) &&
        Objects.equals(this.implementationNotes, cdashClassField.implementationNotes) &&
        Objects.equals(this.mappingInstructions, cdashClassField.mappingInstructions) &&
        Objects.equals(this.links, cdashClassField.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ordinal, name, label, definition, questionText, prompt, simpleDatatype, implementationNotes, mappingInstructions, links);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashClassField {\n");
    
    sb.append("    ordinal: ").append(toIndentedString(ordinal)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    definition: ").append(toIndentedString(definition)).append("\n");
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

