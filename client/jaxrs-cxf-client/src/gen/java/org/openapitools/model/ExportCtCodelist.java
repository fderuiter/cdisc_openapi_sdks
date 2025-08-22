package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportCtTerm;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCtCodelist  {
  
  @ApiModelProperty(value = "")
  private String code;

  @ApiModelProperty(value = "")
  private String codelistCode;

  @ApiModelProperty(value = "")
  private String codelistExtensibleYesNo;

  @ApiModelProperty(value = "")
  private String codelistName;

  @ApiModelProperty(value = "")
  private String cdISCSubmissionValue;

  @ApiModelProperty(value = "")
  private List<String> cdISCSynonymS = new ArrayList<>();

  @ApiModelProperty(value = "")
  private String cdISCDefinition;

  @ApiModelProperty(value = "")
  private String ncIPreferredTerm;

  @ApiModelProperty(value = "")
  private String standardAndDate;

  @ApiModelProperty(value = "")
  private List<ExportCtTerm>  = new ArrayList<>();
 /**
   * Get code
   * @return code
  **/
  @JsonProperty("Code")
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public ExportCtCodelist code(String code) {
    this.code = code;
    return this;
  }

 /**
   * Get codelistCode
   * @return codelistCode
  **/
  @JsonProperty("Codelist Code")
  public String getCodelistCode() {
    return codelistCode;
  }

  public void setCodelistCode(String codelistCode) {
    this.codelistCode = codelistCode;
  }

  public ExportCtCodelist codelistCode(String codelistCode) {
    this.codelistCode = codelistCode;
    return this;
  }

 /**
   * Get codelistExtensibleYesNo
   * @return codelistExtensibleYesNo
  **/
  @JsonProperty("Codelist Extensible (Yes/No)")
  public String getCodelistExtensibleYesNo() {
    return codelistExtensibleYesNo;
  }

  public void setCodelistExtensibleYesNo(String codelistExtensibleYesNo) {
    this.codelistExtensibleYesNo = codelistExtensibleYesNo;
  }

  public ExportCtCodelist codelistExtensibleYesNo(String codelistExtensibleYesNo) {
    this.codelistExtensibleYesNo = codelistExtensibleYesNo;
    return this;
  }

 /**
   * Get codelistName
   * @return codelistName
  **/
  @JsonProperty("Codelist Name")
  public String getCodelistName() {
    return codelistName;
  }

  public void setCodelistName(String codelistName) {
    this.codelistName = codelistName;
  }

  public ExportCtCodelist codelistName(String codelistName) {
    this.codelistName = codelistName;
    return this;
  }

 /**
   * Get cdISCSubmissionValue
   * @return cdISCSubmissionValue
  **/
  @JsonProperty("CDISC Submission Value")
  public String getCdISCSubmissionValue() {
    return cdISCSubmissionValue;
  }

  public void setCdISCSubmissionValue(String cdISCSubmissionValue) {
    this.cdISCSubmissionValue = cdISCSubmissionValue;
  }

  public ExportCtCodelist cdISCSubmissionValue(String cdISCSubmissionValue) {
    this.cdISCSubmissionValue = cdISCSubmissionValue;
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

  public ExportCtCodelist cdISCSynonymS(List<String> cdISCSynonymS) {
    this.cdISCSynonymS = cdISCSynonymS;
    return this;
  }

  public ExportCtCodelist addCdISCSynonymSItem(String cdISCSynonymSItem) {
    this.cdISCSynonymS.add(cdISCSynonymSItem);
    return this;
  }

 /**
   * Get cdISCDefinition
   * @return cdISCDefinition
  **/
  @JsonProperty("CDISC Definition")
  public String getCdISCDefinition() {
    return cdISCDefinition;
  }

  public void setCdISCDefinition(String cdISCDefinition) {
    this.cdISCDefinition = cdISCDefinition;
  }

  public ExportCtCodelist cdISCDefinition(String cdISCDefinition) {
    this.cdISCDefinition = cdISCDefinition;
    return this;
  }

 /**
   * Get ncIPreferredTerm
   * @return ncIPreferredTerm
  **/
  @JsonProperty("NCI Preferred Term")
  public String getNcIPreferredTerm() {
    return ncIPreferredTerm;
  }

  public void setNcIPreferredTerm(String ncIPreferredTerm) {
    this.ncIPreferredTerm = ncIPreferredTerm;
  }

  public ExportCtCodelist ncIPreferredTerm(String ncIPreferredTerm) {
    this.ncIPreferredTerm = ncIPreferredTerm;
    return this;
  }

 /**
   * Get standardAndDate
   * @return standardAndDate
  **/
  @JsonProperty("Standard and Date")
  public String getStandardAndDate() {
    return standardAndDate;
  }

  public void setStandardAndDate(String standardAndDate) {
    this.standardAndDate = standardAndDate;
  }

  public ExportCtCodelist standardAndDate(String standardAndDate) {
    this.standardAndDate = standardAndDate;
    return this;
  }

 /**
   * Get 
   * @return 
  **/
  @JsonProperty("")
  public List<ExportCtTerm> get() {
    return ;
  }

  public void set(List<ExportCtTerm> ) {
    this. = ;
  }

  public ExportCtCodelist (List<ExportCtTerm> ) {
    this. = ;
    return this;
  }

  public ExportCtCodelist addItem(ExportCtTerm Item) {
    this..add(Item);
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
    ExportCtCodelist exportCtCodelist = (ExportCtCodelist) o;
    return Objects.equals(this.code, exportCtCodelist.code) &&
        Objects.equals(this.codelistCode, exportCtCodelist.codelistCode) &&
        Objects.equals(this.codelistExtensibleYesNo, exportCtCodelist.codelistExtensibleYesNo) &&
        Objects.equals(this.codelistName, exportCtCodelist.codelistName) &&
        Objects.equals(this.cdISCSubmissionValue, exportCtCodelist.cdISCSubmissionValue) &&
        Objects.equals(this.cdISCSynonymS, exportCtCodelist.cdISCSynonymS) &&
        Objects.equals(this.cdISCDefinition, exportCtCodelist.cdISCDefinition) &&
        Objects.equals(this.ncIPreferredTerm, exportCtCodelist.ncIPreferredTerm) &&
        Objects.equals(this.standardAndDate, exportCtCodelist.standardAndDate) &&
        Objects.equals(this., exportCtCodelist.);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, codelistCode, codelistExtensibleYesNo, codelistName, cdISCSubmissionValue, cdISCSynonymS, cdISCDefinition, ncIPreferredTerm, standardAndDate, );
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCtCodelist {\n");
    
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    codelistCode: ").append(toIndentedString(codelistCode)).append("\n");
    sb.append("    codelistExtensibleYesNo: ").append(toIndentedString(codelistExtensibleYesNo)).append("\n");
    sb.append("    codelistName: ").append(toIndentedString(codelistName)).append("\n");
    sb.append("    cdISCSubmissionValue: ").append(toIndentedString(cdISCSubmissionValue)).append("\n");
    sb.append("    cdISCSynonymS: ").append(toIndentedString(cdISCSynonymS)).append("\n");
    sb.append("    cdISCDefinition: ").append(toIndentedString(cdISCDefinition)).append("\n");
    sb.append("    ncIPreferredTerm: ").append(toIndentedString(ncIPreferredTerm)).append("\n");
    sb.append("    standardAndDate: ").append(toIndentedString(standardAndDate)).append("\n");
    sb.append("    : ").append(toIndentedString()).append("\n");
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

