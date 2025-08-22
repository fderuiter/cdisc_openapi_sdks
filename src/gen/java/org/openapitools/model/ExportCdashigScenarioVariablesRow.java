package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCdashigScenarioVariablesRow  {
  
  @ApiModelProperty(value = "")
  private String version;

  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String domain;

  @ApiModelProperty(value = "")
  private String dataCollectionScenario;

  @ApiModelProperty(value = "")
  private String variableOrder;

  @ApiModelProperty(value = "")
  private String cdASHIGVariable;

  @ApiModelProperty(value = "")
  private String cdASHIGVariableLabel;

  @ApiModelProperty(value = "")
  private String drAFTCDASHIGDefinition;

  @ApiModelProperty(value = "")
  private String questionText;

  @ApiModelProperty(value = "")
  private String prompt;

  @ApiModelProperty(value = "")
  private String type;

  @ApiModelProperty(value = "")
  private String cdASHIGCore;

  @ApiModelProperty(value = "")
  private String caseReportFormCompletionInstructions;

  @ApiModelProperty(value = "")
  private List<String> sdTMIGTarget = new ArrayList<>();

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

  public ExportCdashigScenarioVariablesRow version(String version) {
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

  public ExportCdashigScenarioVariablesRow propertyClass(String propertyClass) {
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

  public ExportCdashigScenarioVariablesRow domain(String domain) {
    this.domain = domain;
    return this;
  }

 /**
   * Get dataCollectionScenario
   * @return dataCollectionScenario
  **/
  @JsonProperty("Data Collection Scenario")
  public String getDataCollectionScenario() {
    return dataCollectionScenario;
  }

  public void setDataCollectionScenario(String dataCollectionScenario) {
    this.dataCollectionScenario = dataCollectionScenario;
  }

  public ExportCdashigScenarioVariablesRow dataCollectionScenario(String dataCollectionScenario) {
    this.dataCollectionScenario = dataCollectionScenario;
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

  public ExportCdashigScenarioVariablesRow variableOrder(String variableOrder) {
    this.variableOrder = variableOrder;
    return this;
  }

 /**
   * Get cdASHIGVariable
   * @return cdASHIGVariable
  **/
  @JsonProperty("CDASHIG Variable")
  public String getCdASHIGVariable() {
    return cdASHIGVariable;
  }

  public void setCdASHIGVariable(String cdASHIGVariable) {
    this.cdASHIGVariable = cdASHIGVariable;
  }

  public ExportCdashigScenarioVariablesRow cdASHIGVariable(String cdASHIGVariable) {
    this.cdASHIGVariable = cdASHIGVariable;
    return this;
  }

 /**
   * Get cdASHIGVariableLabel
   * @return cdASHIGVariableLabel
  **/
  @JsonProperty("CDASHIG Variable Label")
  public String getCdASHIGVariableLabel() {
    return cdASHIGVariableLabel;
  }

  public void setCdASHIGVariableLabel(String cdASHIGVariableLabel) {
    this.cdASHIGVariableLabel = cdASHIGVariableLabel;
  }

  public ExportCdashigScenarioVariablesRow cdASHIGVariableLabel(String cdASHIGVariableLabel) {
    this.cdASHIGVariableLabel = cdASHIGVariableLabel;
    return this;
  }

 /**
   * Get drAFTCDASHIGDefinition
   * @return drAFTCDASHIGDefinition
  **/
  @JsonProperty("DRAFT CDASHIG Definition")
  public String getDrAFTCDASHIGDefinition() {
    return drAFTCDASHIGDefinition;
  }

  public void setDrAFTCDASHIGDefinition(String drAFTCDASHIGDefinition) {
    this.drAFTCDASHIGDefinition = drAFTCDASHIGDefinition;
  }

  public ExportCdashigScenarioVariablesRow drAFTCDASHIGDefinition(String drAFTCDASHIGDefinition) {
    this.drAFTCDASHIGDefinition = drAFTCDASHIGDefinition;
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

  public ExportCdashigScenarioVariablesRow questionText(String questionText) {
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

  public ExportCdashigScenarioVariablesRow prompt(String prompt) {
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

  public ExportCdashigScenarioVariablesRow type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get cdASHIGCore
   * @return cdASHIGCore
  **/
  @JsonProperty("CDASHIG Core")
  public String getCdASHIGCore() {
    return cdASHIGCore;
  }

  public void setCdASHIGCore(String cdASHIGCore) {
    this.cdASHIGCore = cdASHIGCore;
  }

  public ExportCdashigScenarioVariablesRow cdASHIGCore(String cdASHIGCore) {
    this.cdASHIGCore = cdASHIGCore;
    return this;
  }

 /**
   * Get caseReportFormCompletionInstructions
   * @return caseReportFormCompletionInstructions
  **/
  @JsonProperty("Case Report Form Completion Instructions")
  public String getCaseReportFormCompletionInstructions() {
    return caseReportFormCompletionInstructions;
  }

  public void setCaseReportFormCompletionInstructions(String caseReportFormCompletionInstructions) {
    this.caseReportFormCompletionInstructions = caseReportFormCompletionInstructions;
  }

  public ExportCdashigScenarioVariablesRow caseReportFormCompletionInstructions(String caseReportFormCompletionInstructions) {
    this.caseReportFormCompletionInstructions = caseReportFormCompletionInstructions;
    return this;
  }

 /**
   * Get sdTMIGTarget
   * @return sdTMIGTarget
  **/
  @JsonProperty("SDTMIG Target")
  public List<String> getSdTMIGTarget() {
    return sdTMIGTarget;
  }

  public void setSdTMIGTarget(List<String> sdTMIGTarget) {
    this.sdTMIGTarget = sdTMIGTarget;
  }

  public ExportCdashigScenarioVariablesRow sdTMIGTarget(List<String> sdTMIGTarget) {
    this.sdTMIGTarget = sdTMIGTarget;
    return this;
  }

  public ExportCdashigScenarioVariablesRow addSdTMIGTargetItem(String sdTMIGTargetItem) {
    this.sdTMIGTarget.add(sdTMIGTargetItem);
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

  public ExportCdashigScenarioVariablesRow mappingInstructions(String mappingInstructions) {
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

  public ExportCdashigScenarioVariablesRow controlledTerminologyCodelistName(String controlledTerminologyCodelistName) {
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

  public ExportCdashigScenarioVariablesRow implementationNotes(String implementationNotes) {
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
    ExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow = (ExportCdashigScenarioVariablesRow) o;
    return Objects.equals(this.version, exportCdashigScenarioVariablesRow.version) &&
        Objects.equals(this.propertyClass, exportCdashigScenarioVariablesRow.propertyClass) &&
        Objects.equals(this.domain, exportCdashigScenarioVariablesRow.domain) &&
        Objects.equals(this.dataCollectionScenario, exportCdashigScenarioVariablesRow.dataCollectionScenario) &&
        Objects.equals(this.variableOrder, exportCdashigScenarioVariablesRow.variableOrder) &&
        Objects.equals(this.cdASHIGVariable, exportCdashigScenarioVariablesRow.cdASHIGVariable) &&
        Objects.equals(this.cdASHIGVariableLabel, exportCdashigScenarioVariablesRow.cdASHIGVariableLabel) &&
        Objects.equals(this.drAFTCDASHIGDefinition, exportCdashigScenarioVariablesRow.drAFTCDASHIGDefinition) &&
        Objects.equals(this.questionText, exportCdashigScenarioVariablesRow.questionText) &&
        Objects.equals(this.prompt, exportCdashigScenarioVariablesRow.prompt) &&
        Objects.equals(this.type, exportCdashigScenarioVariablesRow.type) &&
        Objects.equals(this.cdASHIGCore, exportCdashigScenarioVariablesRow.cdASHIGCore) &&
        Objects.equals(this.caseReportFormCompletionInstructions, exportCdashigScenarioVariablesRow.caseReportFormCompletionInstructions) &&
        Objects.equals(this.sdTMIGTarget, exportCdashigScenarioVariablesRow.sdTMIGTarget) &&
        Objects.equals(this.mappingInstructions, exportCdashigScenarioVariablesRow.mappingInstructions) &&
        Objects.equals(this.controlledTerminologyCodelistName, exportCdashigScenarioVariablesRow.controlledTerminologyCodelistName) &&
        Objects.equals(this.implementationNotes, exportCdashigScenarioVariablesRow.implementationNotes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, propertyClass, domain, dataCollectionScenario, variableOrder, cdASHIGVariable, cdASHIGVariableLabel, drAFTCDASHIGDefinition, questionText, prompt, type, cdASHIGCore, caseReportFormCompletionInstructions, sdTMIGTarget, mappingInstructions, controlledTerminologyCodelistName, implementationNotes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCdashigScenarioVariablesRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    domain: ").append(toIndentedString(domain)).append("\n");
    sb.append("    dataCollectionScenario: ").append(toIndentedString(dataCollectionScenario)).append("\n");
    sb.append("    variableOrder: ").append(toIndentedString(variableOrder)).append("\n");
    sb.append("    cdASHIGVariable: ").append(toIndentedString(cdASHIGVariable)).append("\n");
    sb.append("    cdASHIGVariableLabel: ").append(toIndentedString(cdASHIGVariableLabel)).append("\n");
    sb.append("    drAFTCDASHIGDefinition: ").append(toIndentedString(drAFTCDASHIGDefinition)).append("\n");
    sb.append("    questionText: ").append(toIndentedString(questionText)).append("\n");
    sb.append("    prompt: ").append(toIndentedString(prompt)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    cdASHIGCore: ").append(toIndentedString(cdASHIGCore)).append("\n");
    sb.append("    caseReportFormCompletionInstructions: ").append(toIndentedString(caseReportFormCompletionInstructions)).append("\n");
    sb.append("    sdTMIGTarget: ").append(toIndentedString(sdTMIGTarget)).append("\n");
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

