package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSendigDatasetsRow  {
  
  @ApiModelProperty(value = "")
  private String version;

  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String datasetName;

  @ApiModelProperty(value = "")
  private String datasetLabel;

  @ApiModelProperty(value = "")
  private String structure;
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

  public ExportSendigDatasetsRow version(String version) {
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

  public ExportSendigDatasetsRow propertyClass(String propertyClass) {
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

  public ExportSendigDatasetsRow datasetName(String datasetName) {
    this.datasetName = datasetName;
    return this;
  }

 /**
   * Get datasetLabel
   * @return datasetLabel
  **/
  @JsonProperty("Dataset Label")
  public String getDatasetLabel() {
    return datasetLabel;
  }

  public void setDatasetLabel(String datasetLabel) {
    this.datasetLabel = datasetLabel;
  }

  public ExportSendigDatasetsRow datasetLabel(String datasetLabel) {
    this.datasetLabel = datasetLabel;
    return this;
  }

 /**
   * Get structure
   * @return structure
  **/
  @JsonProperty("Structure")
  public String getStructure() {
    return structure;
  }

  public void setStructure(String structure) {
    this.structure = structure;
  }

  public ExportSendigDatasetsRow structure(String structure) {
    this.structure = structure;
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
    ExportSendigDatasetsRow exportSendigDatasetsRow = (ExportSendigDatasetsRow) o;
    return Objects.equals(this.version, exportSendigDatasetsRow.version) &&
        Objects.equals(this.propertyClass, exportSendigDatasetsRow.propertyClass) &&
        Objects.equals(this.datasetName, exportSendigDatasetsRow.datasetName) &&
        Objects.equals(this.datasetLabel, exportSendigDatasetsRow.datasetLabel) &&
        Objects.equals(this.structure, exportSendigDatasetsRow.structure);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, propertyClass, datasetName, datasetLabel, structure);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSendigDatasetsRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    datasetName: ").append(toIndentedString(datasetName)).append("\n");
    sb.append("    datasetLabel: ").append(toIndentedString(datasetLabel)).append("\n");
    sb.append("    structure: ").append(toIndentedString(structure)).append("\n");
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

