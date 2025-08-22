package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmClassRefElement;
import org.openapitools.model.SdtmClassesRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmClassesLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmClassesRef self;

  @ApiModelProperty(value = "")
  private SdtmClassesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmClassRefElement> classes = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmClassesRef getSelf() {
    return self;
  }

  public void setSelf(SdtmClassesRef self) {
    this.self = self;
  }

  public SdtmClassesLinks self(SdtmClassesRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmClassesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmClassesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmClassesLinks priorVersion(SdtmClassesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<SdtmClassRefElement> getClasses() {
    return classes;
  }

  public void setClasses(List<SdtmClassRefElement> classes) {
    this.classes = classes;
  }

  public SdtmClassesLinks classes(List<SdtmClassRefElement> classes) {
    this.classes = classes;
    return this;
  }

  public SdtmClassesLinks addClassesItem(SdtmClassRefElement classesItem) {
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
    SdtmClassesLinks sdtmClassesLinks = (SdtmClassesLinks) o;
    return Objects.equals(this.self, sdtmClassesLinks.self) &&
        Objects.equals(this.priorVersion, sdtmClassesLinks.priorVersion) &&
        Objects.equals(this.classes, sdtmClassesLinks.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmClassesLinks {\n");
    
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

