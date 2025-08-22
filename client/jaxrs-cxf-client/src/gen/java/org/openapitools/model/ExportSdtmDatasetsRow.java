package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportSdtmDatasetsRow  {
  
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

  public ExportSdtmDatasetsRow version(String version) {
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

  public ExportSdtmDatasetsRow propertyClass(String propertyClass) {
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

  public ExportSdtmDatasetsRow datasetName(String datasetName) {
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

  public ExportSdtmDatasetsRow datasetLabel(String datasetLabel) {
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

  public ExportSdtmDatasetsRow structure(String structure) {
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
    ExportSdtmDatasetsRow exportSdtmDatasetsRow = (ExportSdtmDatasetsRow) o;
    return Objects.equals(this.version, exportSdtmDatasetsRow.version) &&
        Objects.equals(this.propertyClass, exportSdtmDatasetsRow.propertyClass) &&
        Objects.equals(this.datasetName, exportSdtmDatasetsRow.datasetName) &&
        Objects.equals(this.datasetLabel, exportSdtmDatasetsRow.datasetLabel) &&
        Objects.equals(this.structure, exportSdtmDatasetsRow.structure);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, propertyClass, datasetName, datasetLabel, structure);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportSdtmDatasetsRow {\n");
    
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

