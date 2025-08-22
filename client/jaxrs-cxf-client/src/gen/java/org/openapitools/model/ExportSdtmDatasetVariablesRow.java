package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmDatasetVariablesRow  {
  
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
  private String roleDescription;

  @ApiModelProperty(value = "")
  private String description;
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

  public ExportSdtmDatasetVariablesRow version(String version) {
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

  public ExportSdtmDatasetVariablesRow variableOrder(String variableOrder) {
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

  public ExportSdtmDatasetVariablesRow propertyClass(String propertyClass) {
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

  public ExportSdtmDatasetVariablesRow datasetName(String datasetName) {
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

  public ExportSdtmDatasetVariablesRow variableName(String variableName) {
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

  public ExportSdtmDatasetVariablesRow variableLabel(String variableLabel) {
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

  public ExportSdtmDatasetVariablesRow type(String type) {
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

  public ExportSdtmDatasetVariablesRow controlledTermsCommaCodelistOrFormat(String controlledTermsCommaCodelistOrFormat) {
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

  public ExportSdtmDatasetVariablesRow role(String role) {
    this.role = role;
    return this;
  }

 /**
   * Get roleDescription
   * @return roleDescription
  **/
  @JsonProperty("Role Description")
  public String getRoleDescription() {
    return roleDescription;
  }

  public void setRoleDescription(String roleDescription) {
    this.roleDescription = roleDescription;
  }

  public ExportSdtmDatasetVariablesRow roleDescription(String roleDescription) {
    this.roleDescription = roleDescription;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("Description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public ExportSdtmDatasetVariablesRow description(String description) {
    this.description = description;
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
    ExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow = (ExportSdtmDatasetVariablesRow) o;
    return Objects.equals(this.version, exportSdtmDatasetVariablesRow.version) &&
        Objects.equals(this.variableOrder, exportSdtmDatasetVariablesRow.variableOrder) &&
        Objects.equals(this.propertyClass, exportSdtmDatasetVariablesRow.propertyClass) &&
        Objects.equals(this.datasetName, exportSdtmDatasetVariablesRow.datasetName) &&
        Objects.equals(this.variableName, exportSdtmDatasetVariablesRow.variableName) &&
        Objects.equals(this.variableLabel, exportSdtmDatasetVariablesRow.variableLabel) &&
        Objects.equals(this.type, exportSdtmDatasetVariablesRow.type) &&
        Objects.equals(this.controlledTermsCommaCodelistOrFormat, exportSdtmDatasetVariablesRow.controlledTermsCommaCodelistOrFormat) &&
        Objects.equals(this.role, exportSdtmDatasetVariablesRow.role) &&
        Objects.equals(this.roleDescription, exportSdtmDatasetVariablesRow.roleDescription) &&
        Objects.equals(this.description, exportSdtmDatasetVariablesRow.description);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, variableOrder, propertyClass, datasetName, variableName, variableLabel, type, controlledTermsCommaCodelistOrFormat, role, roleDescription, description);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmDatasetVariablesRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    variableOrder: ").append(toIndentedString(variableOrder)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    datasetName: ").append(toIndentedString(datasetName)).append("\n");
    sb.append("    variableName: ").append(toIndentedString(variableName)).append("\n");
    sb.append("    variableLabel: ").append(toIndentedString(variableLabel)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    controlledTermsCommaCodelistOrFormat: ").append(toIndentedString(controlledTermsCommaCodelistOrFormat)).append("\n");
    sb.append("    role: ").append(toIndentedString(role)).append("\n");
    sb.append("    roleDescription: ").append(toIndentedString(roleDescription)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
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

