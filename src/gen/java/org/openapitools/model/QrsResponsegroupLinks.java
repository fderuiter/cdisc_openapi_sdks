package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.QrsResponsegroupRef;
import org.openapitools.model.QrsResponses;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsResponsegroupLinks  {
  
  @ApiModelProperty(value = "")
  private QrsResponsegroupRef self;

  @ApiModelProperty(value = "")
  private List<QrsResponses> responses = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public QrsResponsegroupRef getSelf() {
    return self;
  }

  public void setSelf(QrsResponsegroupRef self) {
    this.self = self;
  }

  public QrsResponsegroupLinks self(QrsResponsegroupRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get responses
   * @return responses
  **/
  @JsonProperty("responses")
  public List<QrsResponses> getResponses() {
    return responses;
  }

  public void setResponses(List<QrsResponses> responses) {
    this.responses = responses;
  }

  public QrsResponsegroupLinks responses(List<QrsResponses> responses) {
    this.responses = responses;
    return this;
  }

  public QrsResponsegroupLinks addResponsesItem(QrsResponses responsesItem) {
    this.responses.add(responsesItem);
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
    QrsResponsegroupLinks qrsResponsegroupLinks = (QrsResponsegroupLinks) o;
    return Objects.equals(this.self, qrsResponsegroupLinks.self) &&
        Objects.equals(this.responses, qrsResponsegroupLinks.responses);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, responses);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsResponsegroupLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    responses: ").append(toIndentedString(responses)).append("\n");
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

