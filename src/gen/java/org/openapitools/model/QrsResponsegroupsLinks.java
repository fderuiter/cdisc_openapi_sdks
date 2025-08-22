package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.QrsResponsegroupRefElement;
import org.openapitools.model.QrsResponsegroupsRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsResponsegroupsLinks  {
  
  @ApiModelProperty(value = "")
  private QrsResponsegroupsRef self;

  @ApiModelProperty(value = "")
  private List<QrsResponsegroupRefElement> responsegroups = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public QrsResponsegroupsRef getSelf() {
    return self;
  }

  public void setSelf(QrsResponsegroupsRef self) {
    this.self = self;
  }

  public QrsResponsegroupsLinks self(QrsResponsegroupsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get responsegroups
   * @return responsegroups
  **/
  @JsonProperty("responsegroups")
  public List<QrsResponsegroupRefElement> getResponsegroups() {
    return responsegroups;
  }

  public void setResponsegroups(List<QrsResponsegroupRefElement> responsegroups) {
    this.responsegroups = responsegroups;
  }

  public QrsResponsegroupsLinks responsegroups(List<QrsResponsegroupRefElement> responsegroups) {
    this.responsegroups = responsegroups;
    return this;
  }

  public QrsResponsegroupsLinks addResponsegroupsItem(QrsResponsegroupRefElement responsegroupsItem) {
    this.responsegroups.add(responsegroupsItem);
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
    QrsResponsegroupsLinks qrsResponsegroupsLinks = (QrsResponsegroupsLinks) o;
    return Objects.equals(this.self, qrsResponsegroupsLinks.self) &&
        Objects.equals(this.responsegroups, qrsResponsegroupsLinks.responsegroups);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, responsegroups);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsResponsegroupsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    responsegroups: ").append(toIndentedString(responsegroups)).append("\n");
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

