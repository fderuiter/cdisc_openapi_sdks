package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SendigClassRefElement;
import org.openapitools.model.SendigClassesRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigClassesLinks  {
  
  @ApiModelProperty(value = "")
  private SendigClassesRef self;

  @ApiModelProperty(value = "")
  private SendigClassesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SendigClassRefElement> classes = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigClassesRef getSelf() {
    return self;
  }

  public void setSelf(SendigClassesRef self) {
    this.self = self;
  }

  public SendigClassesLinks self(SendigClassesRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SendigClassesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SendigClassesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SendigClassesLinks priorVersion(SendigClassesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<SendigClassRefElement> getClasses() {
    return classes;
  }

  public void setClasses(List<SendigClassRefElement> classes) {
    this.classes = classes;
  }

  public SendigClassesLinks classes(List<SendigClassRefElement> classes) {
    this.classes = classes;
    return this;
  }

  public SendigClassesLinks addClassesItem(SendigClassRefElement classesItem) {
    this.classes.add(classesItem);
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
    SendigClassesLinks sendigClassesLinks = (SendigClassesLinks) o;
    return Objects.equals(this.self, sendigClassesLinks.self) &&
        Objects.equals(this.priorVersion, sendigClassesLinks.priorVersion) &&
        Objects.equals(this.classes, sendigClassesLinks.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigClassesLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

