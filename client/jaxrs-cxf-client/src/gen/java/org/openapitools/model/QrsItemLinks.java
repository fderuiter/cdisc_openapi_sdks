package org.openapitools.model;

import org.openapitools.model.QrsResponsegroup;
import org.openapitools.model.RootCtTermRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsItemLinks  {
  
  @ApiModelProperty(value = "")
  private RootCtTermRef qrsItemTEST;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsItemTESTCD;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsItemEVAL;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsItemSCAT;

  @ApiModelProperty(value = "")
  private QrsResponsegroup responsegroup;
 /**
   * Get qrsItemTEST
   * @return qrsItemTEST
  **/
  @JsonProperty("qrsItemTEST")
  public RootCtTermRef getQrsItemTEST() {
    return qrsItemTEST;
  }

  public void setQrsItemTEST(RootCtTermRef qrsItemTEST) {
    this.qrsItemTEST = qrsItemTEST;
  }

  public QrsItemLinks qrsItemTEST(RootCtTermRef qrsItemTEST) {
    this.qrsItemTEST = qrsItemTEST;
    return this;
  }

 /**
   * Get qrsItemTESTCD
   * @return qrsItemTESTCD
  **/
  @JsonProperty("qrsItemTESTCD")
  public RootCtTermRef getQrsItemTESTCD() {
    return qrsItemTESTCD;
  }

  public void setQrsItemTESTCD(RootCtTermRef qrsItemTESTCD) {
    this.qrsItemTESTCD = qrsItemTESTCD;
  }

  public QrsItemLinks qrsItemTESTCD(RootCtTermRef qrsItemTESTCD) {
    this.qrsItemTESTCD = qrsItemTESTCD;
    return this;
  }

 /**
   * Get qrsItemEVAL
   * @return qrsItemEVAL
  **/
  @JsonProperty("qrsItemEVAL")
  public RootCtTermRef getQrsItemEVAL() {
    return qrsItemEVAL;
  }

  public void setQrsItemEVAL(RootCtTermRef qrsItemEVAL) {
    this.qrsItemEVAL = qrsItemEVAL;
  }

  public QrsItemLinks qrsItemEVAL(RootCtTermRef qrsItemEVAL) {
    this.qrsItemEVAL = qrsItemEVAL;
    return this;
  }

 /**
   * Get qrsItemSCAT
   * @return qrsItemSCAT
  **/
  @JsonProperty("qrsItemSCAT")
  public RootCtTermRef getQrsItemSCAT() {
    return qrsItemSCAT;
  }

  public void setQrsItemSCAT(RootCtTermRef qrsItemSCAT) {
    this.qrsItemSCAT = qrsItemSCAT;
  }

  public QrsItemLinks qrsItemSCAT(RootCtTermRef qrsItemSCAT) {
    this.qrsItemSCAT = qrsItemSCAT;
    return this;
  }

 /**
   * Get responsegroup
   * @return responsegroup
  **/
  @JsonProperty("responsegroup")
  public QrsResponsegroup getResponsegroup() {
    return responsegroup;
  }

  public void setResponsegroup(QrsResponsegroup responsegroup) {
    this.responsegroup = responsegroup;
  }

  public QrsItemLinks responsegroup(QrsResponsegroup responsegroup) {
    this.responsegroup = responsegroup;
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
    QrsItemLinks qrsItemLinks = (QrsItemLinks) o;
    return Objects.equals(this.qrsItemTEST, qrsItemLinks.qrsItemTEST) &&
        Objects.equals(this.qrsItemTESTCD, qrsItemLinks.qrsItemTESTCD) &&
        Objects.equals(this.qrsItemEVAL, qrsItemLinks.qrsItemEVAL) &&
        Objects.equals(this.qrsItemSCAT, qrsItemLinks.qrsItemSCAT) &&
        Objects.equals(this.responsegroup, qrsItemLinks.responsegroup);
  }

  @Override
  public int hashCode() {
    return Objects.hash(qrsItemTEST, qrsItemTESTCD, qrsItemEVAL, qrsItemSCAT, responsegroup);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsItemLinks {\n");
    
    sb.append("    qrsItemTEST: ").append(toIndentedString(qrsItemTEST)).append("\n");
    sb.append("    qrsItemTESTCD: ").append(toIndentedString(qrsItemTESTCD)).append("\n");
    sb.append("    qrsItemEVAL: ").append(toIndentedString(qrsItemEVAL)).append("\n");
    sb.append("    qrsItemSCAT: ").append(toIndentedString(qrsItemSCAT)).append("\n");
    sb.append("    responsegroup: ").append(toIndentedString(responsegroup)).append("\n");
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

