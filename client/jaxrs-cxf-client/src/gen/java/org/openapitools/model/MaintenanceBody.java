package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class MaintenanceBody  {
  
  @ApiModelProperty(value = "")
  private Boolean maintenanceMode;

  @ApiModelProperty(value = "")
  private String maintenanceMessage;
 /**
   * Get maintenanceMode
   * @return maintenanceMode
  **/
  @JsonProperty("maintenanceMode")
  public Boolean getMaintenanceMode() {
    return maintenanceMode;
  }

  public void setMaintenanceMode(Boolean maintenanceMode) {
    this.maintenanceMode = maintenanceMode;
  }

  public MaintenanceBody maintenanceMode(Boolean maintenanceMode) {
    this.maintenanceMode = maintenanceMode;
    return this;
  }

 /**
   * Get maintenanceMessage
   * @return maintenanceMessage
  **/
  @JsonProperty("maintenanceMessage")
  public String getMaintenanceMessage() {
    return maintenanceMessage;
  }

  public void setMaintenanceMessage(String maintenanceMessage) {
    this.maintenanceMessage = maintenanceMessage;
  }

  public MaintenanceBody maintenanceMessage(String maintenanceMessage) {
    this.maintenanceMessage = maintenanceMessage;
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
    MaintenanceBody maintenanceBody = (MaintenanceBody) o;
    return Objects.equals(this.maintenanceMode, maintenanceBody.maintenanceMode) &&
        Objects.equals(this.maintenanceMessage, maintenanceBody.maintenanceMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(maintenanceMode, maintenanceMessage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MaintenanceBody {\n");
    
    sb.append("    maintenanceMode: ").append(toIndentedString(maintenanceMode)).append("\n");
    sb.append("    maintenanceMessage: ").append(toIndentedString(maintenanceMessage)).append("\n");
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

