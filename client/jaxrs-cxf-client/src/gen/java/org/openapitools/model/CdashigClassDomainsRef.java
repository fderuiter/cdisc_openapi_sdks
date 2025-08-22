package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigClassDomainsRef  {
  
  @ApiModelProperty(example = "/mdr/cdashig/2-1/classes/Findings/domains", value = "")
  private String href;

  @ApiModelProperty(example = "Findings", value = "")
  private String title;

  @ApiModelProperty(example = "CDASHIG Class Domain List", value = "")
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

  public CdashigClassDomainsRef href(String href) {
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

  public CdashigClassDomainsRef title(String title) {
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

  public CdashigClassDomainsRef type(String type) {
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
    CdashigClassDomainsRef cdashigClassDomainsRef = (CdashigClassDomainsRef) o;
    return Objects.equals(this.href, cdashigClassDomainsRef.href) &&
        Objects.equals(this.title, cdashigClassDomainsRef.title) &&
        Objects.equals(this.type, cdashigClassDomainsRef.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(href, title, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigClassDomainsRef {\n");
    
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

