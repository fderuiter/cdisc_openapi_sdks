package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportAdamDatastructuresRow  {
  
  @ApiModelProperty(value = "")
  private String version;

  @ApiModelProperty(value = "")
  private String dataStructureName;

  @ApiModelProperty(value = "")
  private String datasetName;

  @ApiModelProperty(value = "")
  private String datasetLabel;

  @ApiModelProperty(value = "")
  private String datasetDescription;

  @ApiModelProperty(value = "")
  private String propertyClass;
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

  public ExportAdamDatastructuresRow version(String version) {
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

  public ExportAdamDatastructuresRow dataStructureName(String dataStructureName) {
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

  public ExportAdamDatastructuresRow datasetName(String datasetName) {
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

  public ExportAdamDatastructuresRow datasetLabel(String datasetLabel) {
    this.datasetLabel = datasetLabel;
    return this;
  }

 /**
   * Get datasetDescription
   * @return datasetDescription
  **/
  @JsonProperty("Dataset Description")
  public String getDatasetDescription() {
    return datasetDescription;
  }

  public void setDatasetDescription(String datasetDescription) {
    this.datasetDescription = datasetDescription;
  }

  public ExportAdamDatastructuresRow datasetDescription(String datasetDescription) {
    this.datasetDescription = datasetDescription;
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

  public ExportAdamDatastructuresRow propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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
    ExportAdamDatastructuresRow exportAdamDatastructuresRow = (ExportAdamDatastructuresRow) o;
    return Objects.equals(this.version, exportAdamDatastructuresRow.version) &&
        Objects.equals(this.dataStructureName, exportAdamDatastructuresRow.dataStructureName) &&
        Objects.equals(this.datasetName, exportAdamDatastructuresRow.datasetName) &&
        Objects.equals(this.datasetLabel, exportAdamDatastructuresRow.datasetLabel) &&
        Objects.equals(this.datasetDescription, exportAdamDatastructuresRow.datasetDescription) &&
        Objects.equals(this.propertyClass, exportAdamDatastructuresRow.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, dataStructureName, datasetName, datasetLabel, datasetDescription, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportAdamDatastructuresRow {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    dataStructureName: ").append(toIndentedString(dataStructureName)).append("\n");
    sb.append("    datasetName: ").append(toIndentedString(datasetName)).append("\n");
    sb.append("    datasetLabel: ").append(toIndentedString(datasetLabel)).append("\n");
    sb.append("    datasetDescription: ").append(toIndentedString(datasetDescription)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

