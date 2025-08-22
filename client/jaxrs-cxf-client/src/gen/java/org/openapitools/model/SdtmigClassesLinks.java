package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmigClassRefElement;
import org.openapitools.model.SdtmigClassesRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigClassesLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigClassesRef self;

  @ApiModelProperty(value = "")
  private SdtmigClassesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmigClassRefElement> classes = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigClassesRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigClassesRef self) {
    this.self = self;
  }

  public SdtmigClassesLinks self(SdtmigClassesRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigClassesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigClassesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigClassesLinks priorVersion(SdtmigClassesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<SdtmigClassRefElement> getClasses() {
    return classes;
  }

  public void setClasses(List<SdtmigClassRefElement> classes) {
    this.classes = classes;
  }

  public SdtmigClassesLinks classes(List<SdtmigClassRefElement> classes) {
    this.classes = classes;
    return this;
  }

  public SdtmigClassesLinks addClassesItem(SdtmigClassRefElement classesItem) {
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
    SdtmigClassesLinks sdtmigClassesLinks = (SdtmigClassesLinks) o;
    return Objects.equals(this.self, sdtmigClassesLinks.self) &&
        Objects.equals(this.priorVersion, sdtmigClassesLinks.priorVersion) &&
        Objects.equals(this.classes, sdtmigClassesLinks.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigClassesLinks {\n");
    
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

