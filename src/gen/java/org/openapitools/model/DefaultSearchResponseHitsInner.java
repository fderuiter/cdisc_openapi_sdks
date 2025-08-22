package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DefaultSearchResponseHitsInner extends HashMap<String, String> {
  
  @ApiModelProperty(required = true, value = "")
  private String href;

  @ApiModelProperty(required = true, value = "")
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

  public DefaultSearchResponseHitsInner href(String href) {
    this.href = href;
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

  public DefaultSearchResponseHitsInner type(String type) {
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
    DefaultSearchResponseHitsInner defaultSearchResponseHitsInner = (DefaultSearchResponseHitsInner) o;
    return Objects.equals(this.href, defaultSearchResponseHitsInner.href) &&
        Objects.equals(this.type, defaultSearchResponseHitsInner.type) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(href, type, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DefaultSearchResponseHitsInner {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    href: ").append(toIndentedString(href)).append("\n");
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

