package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCdashClassVariablesRow  {
  
  @ApiModelProperty(value = "")
  private String version;

  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String domain;

  @ApiModelProperty(value = "")
  private String variableOrder;

  @ApiModelProperty(value = "")
  private String cdASHVariable;

  @ApiModelProperty(value = "")
  private String cdASHVariableLabel;

  @ApiModelProperty(value = "")
  private String drAFTCDASHDefinition;

  @ApiModelProperty(value = "")
  private String domainSpecific;

  @ApiModelProperty(value = "")
  private String questionText;

  @ApiModelProperty(value = "")
  private String prompt;

  @ApiModelProperty(value = "")
  private String type;

  @ApiModelProperty(value = "")
  private List<String> sdTMTarget = new ArrayList<>();

  @ApiModelProperty(value = "")
  private String mappingInstructions;

  @ApiModelProperty(value = "")
  private String controlledTerminologyCodelistName;

  @ApiModelProperty(value = "")
  private String implementationNotes;
 /**
   * Get version
   * @return version
  **/
  @JsonProperty("Version")
  public String getVersion() {
    return version;
  }

  public void setVersion(String version) {
    this.version = version;
  }

  public ExportCdashClassVariablesRow version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("Class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public ExportCdashClassVariablesRow propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get domain
   * @return domain
  **/
  @JsonProperty("Domain")
  public String getDomain() {
    return domain;
  }

  public void setDomain(String domain) {
    this.domain = domain;
  }

  public ExportCdashClassVariablesRow domain(String domain) {
    this.domain = domain;
    return this;
  }

 /**
   * Get variableOrder
   * @return variableOrder
  **/
  @JsonProperty("Variable Order")
  public String getVariableOrder() {
    return variableOrder;
  }

  public void setVariableOrder(String variableOrder) {
    this.variableOrder = variableOrder;
  }

  public ExportCdashClassVariablesRow variableOrder(String variableOrder) {
    this.variableOrder = variableOrder;
    return this;
  }

 /**
   * Get cdASHVariable
   * @return cdASHVariable
  **/
  @JsonProperty("CDASH Variable")
  public String getCdASHVariable() {
    return cdASHVariable;
  }

  public void setCdASHVariable(String cdASHVariable) {
    this.cdASHVariable = cdASHVariable;
  }

  public ExportCdashClassVariablesRow cdASHVariable(String cdASHVariable) {
    this.cdASHVariable = cdASHVariable;
    return this;
  }

 /**
   * Get cdASHVariableLabel
   * @return cdASHVariableLabel
  **/
  @JsonProperty("CDASH Variable Label")
  public String getCdASHVariableLabel() {
    return cdASHVariableLabel;
  }

  public void setCdASHVariableLabel(String cdASHVariableLabel) {
    this.cdASHVariableLabel = cdASHVariableLabel;
  }

  public ExportCdashClassVariablesRow cdASHVariableLabel(String cdASHVariableLabel) {
    this.cdASHVariableLabel = cdASHVariableLabel;
    return this;
  }

 /**
   * Get drAFTCDASHDefinition
   * @return drAFTCDASHDefinition
  **/
  @JsonProperty("DRAFT CDASH Definition")
  public String getDrAFTCDASHDefinition() {
    return drAFTCDASHDefinition;
  }

  public void setDrAFTCDASHDefinition(String drAFTCDASHDefinition) {
    this.drAFTCDASHDefinition = drAFTCDASHDefinition;
  }

  public ExportCdashClassVariablesRow drAFTCDASHDefinition(String drAFTCDASHDefinition) {
    this.drAFTCDASHDefinition = drAFTCDASHDefinition;
    return this;
  }

 /**
   * Get domainSpecific
   * @return domainSpecific
  **/
  @JsonProperty("Domain Specific")
  public String getDomainSpecific() {
    return domainSpecific;
  }

  public void setDomainSpecific(String domainSpecific) {
    this.domainSpecific = domainSpecific;
  }

  public ExportCdashClassVariablesRow domainSpecific(String domainSpecific) {
    this.domainSpecific = domainSpecific;
    return this;
  }

 /**
   * Get questionText
   * @return questionText
  **/
  @JsonProperty("Question Text")
  public String getQuestionText() {
    return questionText;
  }

  public void setQuestionText(String questionText) {
    this.questionText = questionText;
  }

  public ExportCdashClassVariablesRow questionText(String questionText) {
    this.questionText = questionText;
    return this;
  }

 /**
   * Get prompt
   * @return prompt
  **/
  @JsonProperty("Prompt")
  public String getPrompt() {
    return prompt;
  }

  public void setPrompt(String prompt) {
    this.prompt = prompt;
  }

  public ExportCdashClassVariablesRow prompt(String prompt) {
    this.prompt = prompt;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("Type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ExportCdashClassVariablesRow type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get sdTMTarget
   * @return sdTMTarget
  **/
  @JsonProperty("SDTM Target")
  public List<String> getSdTMTarget() {
    return sdTMTarget;
  }

  public void setSdTMTarget(List<String> sdTMTarget) {
    this.sdTMTarget = sdTMTarget;
  }

  public ExportCdashClassVariablesRow sdTMTarget(List<String> sdTMTarget) {
    this.sdTMTarget = sdTMTarget;
    return this;
  }

  public ExportCdashClassVariablesRow addSdTMTargetItem(String sdTMTargetItem) {
    this.sdTMTarget.add(sdTMTargetItem);
    return this;
  }

 /**
   * Get mappingInstructions
   * @return mappingInstructions
  **/
  @JsonProperty("Mapping Instructions")
  public String getMappingInstructions() {
    return mappingInstructions;
  }

  public void setMappingInstructions(String mappingInstructions) {
    this.mappingInstructions = mappingInstructions;
  }

  public ExportCdashClassVariablesRow mappingInstructions(String mappingInstructions) {
    this.mappingInstructions = mappingInstructions;
    return this;
  }

 /**
   * Get controlledTerminologyCodelistName
   * @return controlledTerminologyCodelistName
  **/
  @JsonProperty("Controlled Terminology Codelist Name")
  public String getControlledTerminologyCodelistName() {
    return controlledTerminologyCodelistName;
  }

  public void setControlledTerminologyCodelistName(String controlledTerminologyCodelistName) {
    this.controlledTerminologyCodelistName = controlledTerminologyCodelistName;
  }

  public ExportCdashClassVariablesRow controlledTerminologyCodelistName(String controlledTerminologyCodelistName) {
    this.controlledTerminologyCodelistName = controlledTerminologyCodelistName;
    return this;
  }

 /**
   * Get implementationNotes
   * @return implementationNotes
  **/
  @JsonProperty("Implementation Notes")
  public String getImplementationNotes() {
    return implementationNotes;
  }

  public void setImplementationNotes(String implementationNotes) {
    this.implementationNotes = implementationNotes;
  }

  public ExportCdashClassVariablesRow implementationNotes(String implementationNotes) {
    this.implementationNotes = implementationNotes;
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
    ExportCdashClassVariablesRow exportCdashClassVariablesRow = (ExportCdashClassVariablesRow) o;
    return Objects.equals(this.version, exportCdashClassVariablesRow.version) &&
        Objects.equals(this.propertyClass, exportCdashClassVariablesRow.propertyClass) &&
        Objects.equals(this.domain, exportCdashClassVariablesRow.domain) &&
        Objects.equals(this.variableOrder, exportCdashClassVariablesRow.variableOrder) &&
        Objects.equals(this.cdASHVariable, exportCdashClassVariablesRow.cdASHVariable) &&
        Objects.equals(this.cdASHVariableLabel, exportCdashClassVariablesRow.cdASHVariableLabel) &&
        Objects.equals(this.drAFTCDASHDefinition, exportCdashClassVariablesRow.drAFTCDASHDefinition) &&
        Objects.equals(this.domainSpecific, exportCdashClassVariablesRow.domainSpecific) &&
        Objects.equals(this.questionText, exportCdashClassVariablesRow.questionText) &&
        Objects.equals(this.prompt, exportCdashClassVariablesRow.prompt) &&
        Objects.equals(this.type, exportCdashClassVariablesRow.type) &&
        Objects.equals(this.sdTMTarget, exportCdashClassVariablesRow.sdTMTarget) &&
        Objects.equals(this.mappingInstructions, exportCdashClassVariablesRow.mappingInstructions) &&
        Objects.equals(this.controlledTerminologyCodelistName, exportCdashClassVariablesRow.controlledTerminologyCodelistName) &&
        Objects.equals(this.implementationNotes, exportCdashClassVariablesRow.implementationNotes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, propertyClass, domain, variableOrder, cdASHVariable, cdASHVariableLabel, drAFTCDASHDefinition, domainSpecific, questionText, prompt, type, sdTMTarget, mappingInstructions, controlledTerminologyCodelistName, implementationNotes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCdashClassVariablesRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    domain: ").append(toIndentedString(domain)).append("\n");
    sb.append("    variableOrder: ").append(toIndentedString(variableOrder)).append("\n");
    sb.append("    cdASHVariable: ").append(toIndentedString(cdASHVariable)).append("\n");
    sb.append("    cdASHVariableLabel: ").append(toIndentedString(cdASHVariableLabel)).append("\n");
    sb.append("    drAFTCDASHDefinition: ").append(toIndentedString(drAFTCDASHDefinition)).append("\n");
    sb.append("    domainSpecific: ").append(toIndentedString(domainSpecific)).append("\n");
    sb.append("    questionText: ").append(toIndentedString(questionText)).append("\n");
    sb.append("    prompt: ").append(toIndentedString(prompt)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    sdTMTarget: ").append(toIndentedString(sdTMTarget)).append("\n");
    sb.append("    mappingInstructions: ").append(toIndentedString(mappingInstructions)).append("\n");
    sb.append("    controlledTerminologyCodelistName: ").append(toIndentedString(controlledTerminologyCodelistName)).append("\n");
    sb.append("    implementationNotes: ").append(toIndentedString(implementationNotes)).append("\n");
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

