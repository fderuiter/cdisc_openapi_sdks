package org.openapitools.model;

import org.openapitools.model.AboutLinks;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class About  {
  
  @ApiModelProperty(value = "")
  private AboutLinks links;

  @ApiModelProperty(example = "https://wiki.cdisc.org/display/LIBSUPRT/Release+Notes", value = "")
  private String releaseNotes;

  @ApiModelProperty(example = "https://www.cdisc.org/cdisc-library/api-documentation", value = "")
  private String apiDocumentation;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public AboutLinks getLinks() {
    return links;
  }

  public void setLinks(AboutLinks links) {
    this.links = links;
  }

  public About links(AboutLinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get releaseNotes
   * @return releaseNotes
  **/
  @JsonProperty("release-notes")
  public String getReleaseNotes() {
    return releaseNotes;
  }

  public void setReleaseNotes(String releaseNotes) {
    this.releaseNotes = releaseNotes;
  }

  public About releaseNotes(String releaseNotes) {
    this.releaseNotes = releaseNotes;
    return this;
  }

 /**
   * Get apiDocumentation
   * @return apiDocumentation
  **/
  @JsonProperty("api-documentation")
  public String getApiDocumentation() {
    return apiDocumentation;
  }

  public void setApiDocumentation(String apiDocumentation) {
    this.apiDocumentation = apiDocumentation;
  }

  public About apiDocumentation(String apiDocumentation) {
    this.apiDocumentation = apiDocumentation;
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
    About about = (About) o;
    return Objects.equals(this.links, about.links) &&
        Objects.equals(this.releaseNotes, about.releaseNotes) &&
        Objects.equals(this.apiDocumentation, about.apiDocumentation);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links, releaseNotes, apiDocumentation);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class About {\n");
    
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    releaseNotes: ").append(toIndentedString(releaseNotes)).append("\n");
    sb.append("    apiDocumentation: ").append(toIndentedString(apiDocumentation)).append("\n");
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

