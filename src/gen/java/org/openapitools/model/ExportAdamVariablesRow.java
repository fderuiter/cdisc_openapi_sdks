package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportAdamVariablesRow  {
  
  @ApiModelProperty(value = "")
  private String version;

  @ApiModelProperty(value = "")
  private String dataStructureName;

  @ApiModelProperty(value = "")
  private String datasetName;

  @ApiModelProperty(value = "")
  private String variableGroup;

  @ApiModelProperty(value = "")
  private String variableName;

  @ApiModelProperty(value = "")
  private String variableLabel;

  @ApiModelProperty(value = "")
  private String type;

  @ApiModelProperty(value = "")
  private String codelistControlledTerms;

  @ApiModelProperty(value = "")
  private String core;

  @ApiModelProperty(value = "")
  private String cdISCNotes;
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

  public ExportAdamVariablesRow version(String version) {
    this.version = version;
    return this;
  }

 /**
   * Get dataStructureName
   * @return dataStructureName
  **/
  @JsonProperty("Data Structure Name")
  public String getDataStructureName() {
    return dataStructureName;
  }

  public void setDataStructureName(String dataStructureName) {
    this.dataStructureName = dataStructureName;
  }

  public ExportAdamVariablesRow dataStructureName(String dataStructureName) {
    this.dataStructureName = dataStructureName;
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

  public ExportAdamVariablesRow datasetName(String datasetName) {
    this.datasetName = datasetName;
    return this;
  }

 /**
   * Get variableGroup
   * @return variableGroup
  **/
  @JsonProperty("Variable Group")
  public String getVariableGroup() {
    return variableGroup;
  }

  public void setVariableGroup(String variableGroup) {
    this.variableGroup = variableGroup;
  }

  public ExportAdamVariablesRow variableGroup(String variableGroup) {
    this.variableGroup = variableGroup;
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

  public ExportAdamVariablesRow variableName(String variableName) {
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

  public ExportAdamVariablesRow variableLabel(String variableLabel) {
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

  public ExportAdamVariablesRow type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get codelistControlledTerms
   * @return codelistControlledTerms
  **/
  @JsonProperty("Codelist/Controlled Terms")
  public String getCodelistControlledTerms() {
    return codelistControlledTerms;
  }

  public void setCodelistControlledTerms(String codelistControlledTerms) {
    this.codelistControlledTerms = codelistControlledTerms;
  }

  public ExportAdamVariablesRow codelistControlledTerms(String codelistControlledTerms) {
    this.codelistControlledTerms = codelistControlledTerms;
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

  public ExportAdamVariablesRow core(String core) {
    this.core = core;
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

  public ExportAdamVariablesRow cdISCNotes(String cdISCNotes) {
    this.cdISCNotes = cdISCNotes;
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
    ExportAdamVariablesRow exportAdamVariablesRow = (ExportAdamVariablesRow) o;
    return Objects.equals(this.version, exportAdamVariablesRow.version) &&
        Objects.equals(this.dataStructureName, exportAdamVariablesRow.dataStructureName) &&
        Objects.equals(this.datasetName, exportAdamVariablesRow.datasetName) &&
        Objects.equals(this.variableGroup, exportAdamVariablesRow.variableGroup) &&
        Objects.equals(this.variableName, exportAdamVariablesRow.variableName) &&
        Objects.equals(this.variableLabel, exportAdamVariablesRow.variableLabel) &&
        Objects.equals(this.type, exportAdamVariablesRow.type) &&
        Objects.equals(this.codelistControlledTerms, exportAdamVariablesRow.codelistControlledTerms) &&
        Objects.equals(this.core, exportAdamVariablesRow.core) &&
        Objects.equals(this.cdISCNotes, exportAdamVariablesRow.cdISCNotes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, dataStructureName, datasetName, variableGroup, variableName, variableLabel, type, codelistControlledTerms, core, cdISCNotes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportAdamVariablesRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    dataStructureName: ").append(toIndentedString(dataStructureName)).append("\n");
    sb.append("    datasetName: ").append(toIndentedString(datasetName)).append("\n");
    sb.append("    variableGroup: ").append(toIndentedString(variableGroup)).append("\n");
    sb.append("    variableName: ").append(toIndentedString(variableName)).append("\n");
    sb.append("    variableLabel: ").append(toIndentedString(variableLabel)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    codelistControlledTerms: ").append(toIndentedString(codelistControlledTerms)).append("\n");
    sb.append("    core: ").append(toIndentedString(core)).append("\n");
    sb.append("    cdISCNotes: ").append(toIndentedString(cdISCNotes)).append("\n");
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

