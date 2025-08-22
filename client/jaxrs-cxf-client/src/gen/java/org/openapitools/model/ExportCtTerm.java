package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCtTerm  {
  
  @ApiModelProperty(value = "")
  private String bundle1;

  @ApiModelProperty(value = "")
  private List<String> cdISCSynonymS = new ArrayList<>();

  @ApiModelProperty(value = "")
  private String bundle2;
 /**
   * Get bundle1
   * @return bundle1
  **/
  @JsonProperty("bundle-1")
  public String getBundle1() {
    return bundle1;
  }

  public void setBundle1(String bundle1) {
    this.bundle1 = bundle1;
  }

  public ExportCtTerm bundle1(String bundle1) {
    this.bundle1 = bundle1;
    return this;
  }

 /**
   * Get cdISCSynonymS
   * @return cdISCSynonymS
  **/
  @JsonProperty("CDISC Synonym(s)")
  public List<String> getCdISCSynonymS() {
    return cdISCSynonymS;
  }

  public void setCdISCSynonymS(List<String> cdISCSynonymS) {
    this.cdISCSynonymS = cdISCSynonymS;
  }

  public ExportCtTerm cdISCSynonymS(List<String> cdISCSynonymS) {
    this.cdISCSynonymS = cdISCSynonymS;
    return this;
  }

  public ExportCtTerm addCdISCSynonymSItem(String cdISCSynonymSItem) {
    this.cdISCSynonymS.add(cdISCSynonymSItem);
    return this;
  }

 /**
   * Get bundle2
   * @return bundle2
  **/
  @JsonProperty("bundle-2")
  public String getBundle2() {
    return bundle2;
  }

  public void setBundle2(String bundle2) {
    this.bundle2 = bundle2;
  }

  public ExportCtTerm bundle2(String bundle2) {
    this.bundle2 = bundle2;
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
    ExportCtTerm exportCtTerm = (ExportCtTerm) o;
    return Objects.equals(this.bundle1, exportCtTerm.bundle1) &&
        Objects.equals(this.cdISCSynonymS, exportCtTerm.cdISCSynonymS) &&
        Objects.equals(this.bundle2, exportCtTerm.bundle2);
  }

  @Override
  public int hashCode() {
    return Objects.hash(bundle1, cdISCSynonymS, bundle2);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCtTerm {\n");
    
    sb.append("    bundle1: ").append(toIndentedString(bundle1)).append("\n");
    sb.append("    cdISCSynonymS: ").append(toIndentedString(cdISCSynonymS)).append("\n");
    sb.append("    bundle2: ").append(toIndentedString(bundle2)).append("\n");
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

