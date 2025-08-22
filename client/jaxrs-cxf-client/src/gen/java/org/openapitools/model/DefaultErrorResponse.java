package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DefaultErrorResponse  {
  
  @ApiModelProperty(value = "HTTP Status Code")
 /**
   * HTTP Status Code
  **/
  private String statusCode;

  @ApiModelProperty(value = "HTTP Reason Phrase")
 /**
   * HTTP Reason Phrase
  **/
  private String reasonPhrase;

  @ApiModelProperty(value = "User Error Message")
 /**
   * User Error Message
  **/
  private String userMessage;

  @ApiModelProperty(value = "Admin Error Message")
 /**
   * Admin Error Message
  **/
  private String adminMessage;
 /**
   * HTTP Status Code
   * @return statusCode
  **/
  @JsonProperty("statusCode")
  public String getStatusCode() {
    return statusCode;
  }

  public void setStatusCode(String statusCode) {
    this.statusCode = statusCode;
  }

  public DefaultErrorResponse statusCode(String statusCode) {
    this.statusCode = statusCode;
    return this;
  }

 /**
   * HTTP Reason Phrase
   * @return reasonPhrase
  **/
  @JsonProperty("reasonPhrase")
  public String getReasonPhrase() {
    return reasonPhrase;
  }

  public void setReasonPhrase(String reasonPhrase) {
    this.reasonPhrase = reasonPhrase;
  }

  public DefaultErrorResponse reasonPhrase(String reasonPhrase) {
    this.reasonPhrase = reasonPhrase;
    return this;
  }

 /**
   * User Error Message
   * @return userMessage
  **/
  @JsonProperty("userMessage")
  public String getUserMessage() {
    return userMessage;
  }

  public void setUserMessage(String userMessage) {
    this.userMessage = userMessage;
  }

  public DefaultErrorResponse userMessage(String userMessage) {
    this.userMessage = userMessage;
    return this;
  }

 /**
   * Admin Error Message
   * @return adminMessage
  **/
  @JsonProperty("adminMessage")
  public String getAdminMessage() {
    return adminMessage;
  }

  public void setAdminMessage(String adminMessage) {
    this.adminMessage = adminMessage;
  }

  public DefaultErrorResponse adminMessage(String adminMessage) {
    this.adminMessage = adminMessage;
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
    DefaultErrorResponse defaultErrorResponse = (DefaultErrorResponse) o;
    return Objects.equals(this.statusCode, defaultErrorResponse.statusCode) &&
        Objects.equals(this.reasonPhrase, defaultErrorResponse.reasonPhrase) &&
        Objects.equals(this.userMessage, defaultErrorResponse.userMessage) &&
        Objects.equals(this.adminMessage, defaultErrorResponse.adminMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(statusCode, reasonPhrase, userMessage, adminMessage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DefaultErrorResponse {\n");
    
    sb.append("    statusCode: ").append(toIndentedString(statusCode)).append("\n");
    sb.append("    reasonPhrase: ").append(toIndentedString(reasonPhrase)).append("\n");
    sb.append("    userMessage: ").append(toIndentedString(userMessage)).append("\n");
    sb.append("    adminMessage: ").append(toIndentedString(adminMessage)).append("\n");
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

