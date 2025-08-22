package org.openapitools.model;

import org.openapitools.model.QrsItemsRef;
import org.openapitools.model.QrsProductRef;
import org.openapitools.model.RootCtTermRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsProductLinks  {
  
  @ApiModelProperty(value = "")
  private QrsProductRef self;

  @ApiModelProperty(value = "")
  private QrsProductRef priorVersion;

  @ApiModelProperty(value = "")
  private RootCtTermRef qrsTermCAT;

  @ApiModelProperty(value = "")
  private QrsItemsRef qrsItems;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public QrsProductRef getSelf() {
    return self;
  }

  public void setSelf(QrsProductRef self) {
    this.self = self;
  }

  public QrsProductLinks self(QrsProductRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public QrsProductRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(QrsProductRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public QrsProductLinks priorVersion(QrsProductRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get qrsTermCAT
   * @return qrsTermCAT
  **/
  @JsonProperty("qrsTermCAT")
  public RootCtTermRef getQrsTermCAT() {
    return qrsTermCAT;
  }

  public void setQrsTermCAT(RootCtTermRef qrsTermCAT) {
    this.qrsTermCAT = qrsTermCAT;
  }

  public QrsProductLinks qrsTermCAT(RootCtTermRef qrsTermCAT) {
    this.qrsTermCAT = qrsTermCAT;
    return this;
  }

 /**
   * Get qrsItems
   * @return qrsItems
  **/
  @JsonProperty("qrsItems")
  public QrsItemsRef getQrsItems() {
    return qrsItems;
  }

  public void setQrsItems(QrsItemsRef qrsItems) {
    this.qrsItems = qrsItems;
  }

  public QrsProductLinks qrsItems(QrsItemsRef qrsItems) {
    this.qrsItems = qrsItems;
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
    QrsProductLinks qrsProductLinks = (QrsProductLinks) o;
    return Objects.equals(this.self, qrsProductLinks.self) &&
        Objects.equals(this.priorVersion, qrsProductLinks.priorVersion) &&
        Objects.equals(this.qrsTermCAT, qrsProductLinks.qrsTermCAT) &&
        Objects.equals(this.qrsItems, qrsProductLinks.qrsItems);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion, qrsTermCAT, qrsItems);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsProductLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    qrsTermCAT: ").append(toIndentedString(qrsTermCAT)).append("\n");
    sb.append("    qrsItems: ").append(toIndentedString(qrsItems)).append("\n");
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

