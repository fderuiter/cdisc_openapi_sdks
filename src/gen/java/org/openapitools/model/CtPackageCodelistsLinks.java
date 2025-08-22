package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtCodelistRefElement;
import org.openapitools.model.CtPackageCodelistsRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackageCodelistsLinks  {
  
  @ApiModelProperty(value = "")
  private CtPackageCodelistsRef self;

  @ApiModelProperty(value = "")
  private CtPackageCodelistsRef priorVersion;

  @ApiModelProperty(value = "")
  private List<CtCodelistRefElement> codelists = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CtPackageCodelistsRef getSelf() {
    return self;
  }

  public void setSelf(CtPackageCodelistsRef self) {
    this.self = self;
  }

  public CtPackageCodelistsLinks self(CtPackageCodelistsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public CtPackageCodelistsRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(CtPackageCodelistsRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public CtPackageCodelistsLinks priorVersion(CtPackageCodelistsRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get codelists
   * @return codelists
  **/
  @JsonProperty("codelists")
  public List<CtCodelistRefElement> getCodelists() {
    return codelists;
  }

  public void setCodelists(List<CtCodelistRefElement> codelists) {
    this.codelists = codelists;
  }

  public CtPackageCodelistsLinks codelists(List<CtCodelistRefElement> codelists) {
    this.codelists = codelists;
    return this;
  }

  public CtPackageCodelistsLinks addCodelistsItem(CtCodelistRefElement codelistsItem) {
    this.codelists.add(codelistsItem);
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
    CtPackageCodelistsLinks ctPackageCodelistsLinks = (CtPackageCodelistsLinks) o;
    return Objects.equals(this.self, ctPackageCodelistsLinks.self) &&
        Objects.equals(this.priorVersion, ctPackageCodelistsLinks.priorVersion) &&
        Objects.equals(this.codelists, ctPackageCodelistsLinks.codelists);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion, codelists);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackageCodelistsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    codelists: ").append(toIndentedString(codelists)).append("\n");
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

