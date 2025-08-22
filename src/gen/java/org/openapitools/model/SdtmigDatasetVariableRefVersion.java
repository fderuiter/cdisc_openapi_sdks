package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetVariableRefVersion  {
  
  @ApiModelProperty(example = "/mdr/sdtmig/3-2/datasets/LB/variables/LBDTC", value = "")
  private String href;

  @ApiModelProperty(example = "Date/Time of Specimen Collection", value = "")
  private String title;

  @ApiModelProperty(example = "SDTM Dataset Variable", value = "")
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

  public SdtmigDatasetVariableRefVersion href(String href) {
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

  public SdtmigDatasetVariableRefVersion title(String title) {
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

  public SdtmigDatasetVariableRefVersion type(String type) {
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
    SdtmigDatasetVariableRefVersion sdtmigDatasetVariableRefVersion = (SdtmigDatasetVariableRefVersion) o;
    return Objects.equals(this.href, sdtmigDatasetVariableRefVersion.href) &&
        Objects.equals(this.title, sdtmigDatasetVariableRefVersion.title) &&
        Objects.equals(this.type, sdtmigDatasetVariableRefVersion.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(href, title, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetVariableRefVersion {\n");
    
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

