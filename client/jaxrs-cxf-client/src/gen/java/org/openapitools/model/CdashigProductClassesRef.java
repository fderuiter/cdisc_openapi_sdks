package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigProductClassesRef  {
  
  @ApiModelProperty(example = "/mdr/cdashig/2-1/classes", value = "")
  private String href;

  @ApiModelProperty(example = "Clinical Data Acquisition Standards Harmonization Implementation Guide for Human Clinical Trials Version 2.1", value = "")
  private String title;

  @ApiModelProperty(example = "CDASHIG Class List", value = "")
  private String type;
 /**
   * Get href
   * @return href
  **/
  @JsonProperty("href")
  public String getHref() {
    return href;
  }

  public void setHref(String href) {
    this.href = href;
  }

  public CdashigProductClassesRef href(String href) {
    this.href = href;
    return this;
  }

 /**
   * Get title
   * @return title
  **/
  @JsonProperty("title")
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public CdashigProductClassesRef title(String title) {
    this.title = title;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public CdashigProductClassesRef type(String type) {
    this.type = type;
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
    CdashigProductClassesRef cdashigProductClassesRef = (CdashigProductClassesRef) o;
    return Objects.equals(this.href, cdashigProductClassesRef.href) &&
        Objects.equals(this.title, cdashigProductClassesRef.title) &&
        Objects.equals(this.type, cdashigProductClassesRef.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(href, title, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigProductClassesRef {\n");
    
    sb.append("    href: ").append(toIndentedString(href)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

