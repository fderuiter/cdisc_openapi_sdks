package org.openapitools.model;

import org.openapitools.model.RootCtTermRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsResponseLinks  {
  
  @ApiModelProperty(value = "")
  private RootCtTermRef qrsResponseORRES;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsResponseORRESU;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsResponseSTRESC;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsResponseSTRESCU;
 /**
   * Get qrsResponseORRES
   * @return qrsResponseORRES
  **/
  @JsonProperty("qrsResponseORRES")
  public RootCtTermRef getQrsResponseORRES() {
    return qrsResponseORRES;
  }

  public void setQrsResponseORRES(RootCtTermRef qrsResponseORRES) {
    this.qrsResponseORRES = qrsResponseORRES;
  }

  public QrsResponseLinks qrsResponseORRES(RootCtTermRef qrsResponseORRES) {
    this.qrsResponseORRES = qrsResponseORRES;
    return this;
  }

 /**
   * Get qrsResponseORRESU
   * @return qrsResponseORRESU
  **/
  @JsonProperty("qrsResponseORRESU")
  public RootCtTermRef getQrsResponseORRESU() {
    return qrsResponseORRESU;
  }

  public void setQrsResponseORRESU(RootCtTermRef qrsResponseORRESU) {
    this.qrsResponseORRESU = qrsResponseORRESU;
  }

  public QrsResponseLinks qrsResponseORRESU(RootCtTermRef qrsResponseORRESU) {
    this.qrsResponseORRESU = qrsResponseORRESU;
    return this;
  }

 /**
   * Get qrsResponseSTRESC
   * @return qrsResponseSTRESC
  **/
  @JsonProperty("qrsResponseSTRESC")
  public RootCtTermRef getQrsResponseSTRESC() {
    return qrsResponseSTRESC;
  }

  public void setQrsResponseSTRESC(RootCtTermRef qrsResponseSTRESC) {
    this.qrsResponseSTRESC = qrsResponseSTRESC;
  }

  public QrsResponseLinks qrsResponseSTRESC(RootCtTermRef qrsResponseSTRESC) {
    this.qrsResponseSTRESC = qrsResponseSTRESC;
    return this;
  }

 /**
   * Get qrsResponseSTRESCU
   * @return qrsResponseSTRESCU
  **/
  @JsonProperty("qrsResponseSTRESCU")
  public RootCtTermRef getQrsResponseSTRESCU() {
    return qrsResponseSTRESCU;
  }

  public void setQrsResponseSTRESCU(RootCtTermRef qrsResponseSTRESCU) {
    this.qrsResponseSTRESCU = qrsResponseSTRESCU;
  }

  public QrsResponseLinks qrsResponseSTRESCU(RootCtTermRef qrsResponseSTRESCU) {
    this.qrsResponseSTRESCU = qrsResponseSTRESCU;
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
    QrsResponseLinks qrsResponseLinks = (QrsResponseLinks) o;
    return Objects.equals(this.qrsResponseORRES, qrsResponseLinks.qrsResponseORRES) &&
        Objects.equals(this.qrsResponseORRESU, qrsResponseLinks.qrsResponseORRESU) &&
        Objects.equals(this.qrsResponseSTRESC, qrsResponseLinks.qrsResponseSTRESC) &&
        Objects.equals(this.qrsResponseSTRESCU, qrsResponseLinks.qrsResponseSTRESCU);
  }

  @Override
  public int hashCode() {
    return Objects.hash(qrsResponseORRES, qrsResponseORRESU, qrsResponseSTRESC, qrsResponseSTRESCU);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsResponseLinks {\n");
    
    sb.append("    qrsResponseORRES: ").append(toIndentedString(qrsResponseORRES)).append("\n");
    sb.append("    qrsResponseORRESU: ").append(toIndentedString(qrsResponseORRESU)).append("\n");
    sb.append("    qrsResponseSTRESC: ").append(toIndentedString(qrsResponseSTRESC)).append("\n");
    sb.append("    qrsResponseSTRESCU: ").append(toIndentedString(qrsResponseSTRESCU)).append("\n");
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

