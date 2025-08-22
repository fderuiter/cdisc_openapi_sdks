package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmigVariablesRow  {
  
  @ApiModelProperty(value = "")
  private String version;

  @ApiModelProperty(value = "")
  private String variableOrder;

  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String datasetName;

  @ApiModelProperty(value = "")
  private String variableName;

  @ApiModelProperty(value = "")
  private String variableLabel;

  @ApiModelProperty(value = "")
  private String type;

  @ApiModelProperty(value = "")
  private String controlledTermsCommaCodelistOrFormat;

  @ApiModelProperty(value = "")
  private String role;

  @ApiModelProperty(value = "")
  private String cdISCNotes;

  @ApiModelProperty(value = "")
  private String core;
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

  public ExportSdtmigVariablesRow version(String version) {
    this.version = version;
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

  public ExportSdtmigVariablesRow variableOrder(String variableOrder) {
    this.variableOrder = variableOrder;
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

  public ExportSdtmigVariablesRow propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get datasetName
   * @return datasetName
  **/
  @JsonProperty("Dataset Name")
  public String getDatasetName() {
    return datasetName;
  }

  public void setDatasetName(String datasetName) {
    this.datasetName = datasetName;
  }

  public ExportSdtmigVariablesRow datasetName(String datasetName) {
    this.datasetName = datasetName;
    return this;
  }

 /**
   * Get variableName
   * @return variableName
  **/
  @JsonProperty("Variable Name")
  public String getVariableName() {
    return variableName;
  }

  public void setVariableName(String variableName) {
    this.variableName = variableName;
  }

  public ExportSdtmigVariablesRow variableName(String variableName) {
    this.variableName = variableName;
    return this;
  }

 /**
   * Get variableLabel
   * @return variableLabel
  **/
  @JsonProperty("Variable Label")
  public String getVariableLabel() {
    return variableLabel;
  }

  public void setVariableLabel(String variableLabel) {
    this.variableLabel = variableLabel;
  }

  public ExportSdtmigVariablesRow variableLabel(String variableLabel) {
    this.variableLabel = variableLabel;
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

  public ExportSdtmigVariablesRow type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get controlledTermsCommaCodelistOrFormat
   * @return controlledTermsCommaCodelistOrFormat
  **/
  @JsonProperty("Controlled Terms, Codelist or Format")
  public String getControlledTermsCommaCodelistOrFormat() {
    return controlledTermsCommaCodelistOrFormat;
  }

  public void setControlledTermsCommaCodelistOrFormat(String controlledTermsCommaCodelistOrFormat) {
    this.controlledTermsCommaCodelistOrFormat = controlledTermsCommaCodelistOrFormat;
  }

  public ExportSdtmigVariablesRow controlledTermsCommaCodelistOrFormat(String controlledTermsCommaCodelistOrFormat) {
    this.controlledTermsCommaCodelistOrFormat = controlledTermsCommaCodelistOrFormat;
    return this;
  }

 /**
   * Get role
   * @return role
  **/
  @JsonProperty("Role")
  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public ExportSdtmigVariablesRow role(String role) {
    this.role = role;
    return this;
  }

 /**
   * Get cdISCNotes
   * @return cdISCNotes
  **/
  @JsonProperty("CDISC Notes")
  public String getCdISCNotes() {
    return cdISCNotes;
  }

  public void setCdISCNotes(String cdISCNotes) {
    this.cdISCNotes = cdISCNotes;
  }

  public ExportSdtmigVariablesRow cdISCNotes(String cdISCNotes) {
    this.cdISCNotes = cdISCNotes;
    return this;
  }

 /**
   * Get core
   * @return core
  **/
  @JsonProperty("Core")
  public String getCore() {
    return core;
  }

  public void setCore(String core) {
    this.core = core;
  }

  public ExportSdtmigVariablesRow core(String core) {
    this.core = core;
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
    ExportSdtmigVariablesRow exportSdtmigVariablesRow = (ExportSdtmigVariablesRow) o;
    return Objects.equals(this.version, exportSdtmigVariablesRow.version) &&
        Objects.equals(this.variableOrder, exportSdtmigVariablesRow.variableOrder) &&
        Objects.equals(this.propertyClass, exportSdtmigVariablesRow.propertyClass) &&
        Objects.equals(this.datasetName, exportSdtmigVariablesRow.datasetName) &&
        Objects.equals(this.variableName, exportSdtmigVariablesRow.variableName) &&
        Objects.equals(this.variableLabel, exportSdtmigVariablesRow.variableLabel) &&
        Objects.equals(this.type, exportSdtmigVariablesRow.type) &&
        Objects.equals(this.controlledTermsCommaCodelistOrFormat, exportSdtmigVariablesRow.controlledTermsCommaCodelistOrFormat) &&
        Objects.equals(this.role, exportSdtmigVariablesRow.role) &&
        Objects.equals(this.cdISCNotes, exportSdtmigVariablesRow.cdISCNotes) &&
        Objects.equals(this.core, exportSdtmigVariablesRow.core);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, variableOrder, propertyClass, datasetName, variableName, variableLabel, type, controlledTermsCommaCodelistOrFormat, role, cdISCNotes, core);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmigVariablesRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    variableOrder: ").append(toIndentedString(variableOrder)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    datasetName: ").append(toIndentedString(datasetName)).append("\n");
    sb.append("    variableName: ").append(toIndentedString(variableName)).append("\n");
    sb.append("    variableLabel: ").append(toIndentedString(variableLabel)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    controlledTermsCommaCodelistOrFormat: ").append(toIndentedString(controlledTermsCommaCodelistOrFormat)).append("\n");
    sb.append("    role: ").append(toIndentedString(role)).append("\n");
    sb.append("    cdISCNotes: ").append(toIndentedString(cdISCNotes)).append("\n");
    sb.append("    core: ").append(toIndentedString(core)).append("\n");
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

