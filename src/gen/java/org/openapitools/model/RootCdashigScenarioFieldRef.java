package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RootCdashigScenarioFieldRef  {
  
  @ApiModelProperty(example = "/mdr/root/cdashig/scenarios/VS.Generic/fields/VSDAT", value = "")
  private String href;

  @ApiModelProperty(example = "Version-agnostic anchor element for scenario field VS.Generic.VSDAT", value = "")
  private String title;

  @ApiModelProperty(example = "Root Data Element", value = "")
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

  public RootCdashigScenarioFieldRef href(String href) {
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

  public RootCdashigScenarioFieldRef title(String title) {
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

  public RootCdashigScenarioFieldRef type(String type) {
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
    RootCdashigScenarioFieldRef rootCdashigScenarioFieldRef = (RootCdashigScenarioFieldRef) o;
    return Objects.equals(this.href, rootCdashigScenarioFieldRef.href) &&
        Objects.equals(this.title, rootCdashigScenarioFieldRef.title) &&
        Objects.equals(this.type, rootCdashigScenarioFieldRef.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(href, title, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RootCdashigScenarioFieldRef {\n");
    
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

