package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportQrsWorkbookItemsRow  {
  
  @ApiModelProperty(value = "")
  private String itemSequence;

  @ApiModelProperty(value = "")
  private String testName;

  @ApiModelProperty(value = "")
  private String itemText;

  @ApiModelProperty(value = "")
  private String testQuoteSCodelistCCode;

  @ApiModelProperty(value = "")
  private String testQuoteSTermCCode;

  @ApiModelProperty(value = "")
  private String testCodeQuoteSCodelistCCode;

  @ApiModelProperty(value = "")
  private String testCodeQuoteSTermCCode;

  @ApiModelProperty(value = "")
  private String subcategoryQuoteSCodelistCCode;

  @ApiModelProperty(value = "")
  private String subcategoryQuoteSTermCCode;

  @ApiModelProperty(value = "")
  private String evaluatorQuoteSCodelistCCode;

  @ApiModelProperty(value = "")
  private String evaluatorQuoteSTermCCode;

  @ApiModelProperty(value = "")
  private String freeFormResponseQuoteSDatatype;

  @ApiModelProperty(value = "")
  private String responseGroup;
 /**
   * Get itemSequence
   * @return itemSequence
  **/
  @JsonProperty("Item Sequence")
  public String getItemSequence() {
    return itemSequence;
  }

  public void setItemSequence(String itemSequence) {
    this.itemSequence = itemSequence;
  }

  public ExportQrsWorkbookItemsRow itemSequence(String itemSequence) {
    this.itemSequence = itemSequence;
    return this;
  }

 /**
   * Get testName
   * @return testName
  **/
  @JsonProperty("Test Name")
  public String getTestName() {
    return testName;
  }

  public void setTestName(String testName) {
    this.testName = testName;
  }

  public ExportQrsWorkbookItemsRow testName(String testName) {
    this.testName = testName;
    return this;
  }

 /**
   * Get itemText
   * @return itemText
  **/
  @JsonProperty("Item Text")
  public String getItemText() {
    return itemText;
  }

  public void setItemText(String itemText) {
    this.itemText = itemText;
  }

  public ExportQrsWorkbookItemsRow itemText(String itemText) {
    this.itemText = itemText;
    return this;
  }

 /**
   * Get testQuoteSCodelistCCode
   * @return testQuoteSCodelistCCode
  **/
  @JsonProperty("Test&#39;s Codelist C-Code")
  public String getTestQuoteSCodelistCCode() {
    return testQuoteSCodelistCCode;
  }

  public void setTestQuoteSCodelistCCode(String testQuoteSCodelistCCode) {
    this.testQuoteSCodelistCCode = testQuoteSCodelistCCode;
  }

  public ExportQrsWorkbookItemsRow testQuoteSCodelistCCode(String testQuoteSCodelistCCode) {
    this.testQuoteSCodelistCCode = testQuoteSCodelistCCode;
    return this;
  }

 /**
   * Get testQuoteSTermCCode
   * @return testQuoteSTermCCode
  **/
  @JsonProperty("Test&#39;s Term C-Code")
  public String getTestQuoteSTermCCode() {
    return testQuoteSTermCCode;
  }

  public void setTestQuoteSTermCCode(String testQuoteSTermCCode) {
    this.testQuoteSTermCCode = testQuoteSTermCCode;
  }

  public ExportQrsWorkbookItemsRow testQuoteSTermCCode(String testQuoteSTermCCode) {
    this.testQuoteSTermCCode = testQuoteSTermCCode;
    return this;
  }

 /**
   * Get testCodeQuoteSCodelistCCode
   * @return testCodeQuoteSCodelistCCode
  **/
  @JsonProperty("Test Code&#39;s Codelist C-Code")
  public String getTestCodeQuoteSCodelistCCode() {
    return testCodeQuoteSCodelistCCode;
  }

  public void setTestCodeQuoteSCodelistCCode(String testCodeQuoteSCodelistCCode) {
    this.testCodeQuoteSCodelistCCode = testCodeQuoteSCodelistCCode;
  }

  public ExportQrsWorkbookItemsRow testCodeQuoteSCodelistCCode(String testCodeQuoteSCodelistCCode) {
    this.testCodeQuoteSCodelistCCode = testCodeQuoteSCodelistCCode;
    return this;
  }

 /**
   * Get testCodeQuoteSTermCCode
   * @return testCodeQuoteSTermCCode
  **/
  @JsonProperty("Test Code&#39;s Term C-Code")
  public String getTestCodeQuoteSTermCCode() {
    return testCodeQuoteSTermCCode;
  }

  public void setTestCodeQuoteSTermCCode(String testCodeQuoteSTermCCode) {
    this.testCodeQuoteSTermCCode = testCodeQuoteSTermCCode;
  }

  public ExportQrsWorkbookItemsRow testCodeQuoteSTermCCode(String testCodeQuoteSTermCCode) {
    this.testCodeQuoteSTermCCode = testCodeQuoteSTermCCode;
    return this;
  }

 /**
   * Get subcategoryQuoteSCodelistCCode
   * @return subcategoryQuoteSCodelistCCode
  **/
  @JsonProperty("Subcategory&#39;s Codelist C-Code")
  public String getSubcategoryQuoteSCodelistCCode() {
    return subcategoryQuoteSCodelistCCode;
  }

  public void setSubcategoryQuoteSCodelistCCode(String subcategoryQuoteSCodelistCCode) {
    this.subcategoryQuoteSCodelistCCode = subcategoryQuoteSCodelistCCode;
  }

  public ExportQrsWorkbookItemsRow subcategoryQuoteSCodelistCCode(String subcategoryQuoteSCodelistCCode) {
    this.subcategoryQuoteSCodelistCCode = subcategoryQuoteSCodelistCCode;
    return this;
  }

 /**
   * Get subcategoryQuoteSTermCCode
   * @return subcategoryQuoteSTermCCode
  **/
  @JsonProperty("Subcategory&#39;s Term C-Code")
  public String getSubcategoryQuoteSTermCCode() {
    return subcategoryQuoteSTermCCode;
  }

  public void setSubcategoryQuoteSTermCCode(String subcategoryQuoteSTermCCode) {
    this.subcategoryQuoteSTermCCode = subcategoryQuoteSTermCCode;
  }

  public ExportQrsWorkbookItemsRow subcategoryQuoteSTermCCode(String subcategoryQuoteSTermCCode) {
    this.subcategoryQuoteSTermCCode = subcategoryQuoteSTermCCode;
    return this;
  }

 /**
   * Get evaluatorQuoteSCodelistCCode
   * @return evaluatorQuoteSCodelistCCode
  **/
  @JsonProperty("Evaluator&#39;s Codelist C-Code")
  public String getEvaluatorQuoteSCodelistCCode() {
    return evaluatorQuoteSCodelistCCode;
  }

  public void setEvaluatorQuoteSCodelistCCode(String evaluatorQuoteSCodelistCCode) {
    this.evaluatorQuoteSCodelistCCode = evaluatorQuoteSCodelistCCode;
  }

  public ExportQrsWorkbookItemsRow evaluatorQuoteSCodelistCCode(String evaluatorQuoteSCodelistCCode) {
    this.evaluatorQuoteSCodelistCCode = evaluatorQuoteSCodelistCCode;
    return this;
  }

 /**
   * Get evaluatorQuoteSTermCCode
   * @return evaluatorQuoteSTermCCode
  **/
  @JsonProperty("Evaluator&#39;s Term C-Code")
  public String getEvaluatorQuoteSTermCCode() {
    return evaluatorQuoteSTermCCode;
  }

  public void setEvaluatorQuoteSTermCCode(String evaluatorQuoteSTermCCode) {
    this.evaluatorQuoteSTermCCode = evaluatorQuoteSTermCCode;
  }

  public ExportQrsWorkbookItemsRow evaluatorQuoteSTermCCode(String evaluatorQuoteSTermCCode) {
    this.evaluatorQuoteSTermCCode = evaluatorQuoteSTermCCode;
    return this;
  }

 /**
   * Get freeFormResponseQuoteSDatatype
   * @return freeFormResponseQuoteSDatatype
  **/
  @JsonProperty("Free-form Response&#39;s Datatype")
  public String getFreeFormResponseQuoteSDatatype() {
    return freeFormResponseQuoteSDatatype;
  }

  public void setFreeFormResponseQuoteSDatatype(String freeFormResponseQuoteSDatatype) {
    this.freeFormResponseQuoteSDatatype = freeFormResponseQuoteSDatatype;
  }

  public ExportQrsWorkbookItemsRow freeFormResponseQuoteSDatatype(String freeFormResponseQuoteSDatatype) {
    this.freeFormResponseQuoteSDatatype = freeFormResponseQuoteSDatatype;
    return this;
  }

 /**
   * Get responseGroup
   * @return responseGroup
  **/
  @JsonProperty("Response Group")
  public String getResponseGroup() {
    return responseGroup;
  }

  public void setResponseGroup(String responseGroup) {
    this.responseGroup = responseGroup;
  }

  public ExportQrsWorkbookItemsRow responseGroup(String responseGroup) {
    this.responseGroup = responseGroup;
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
    ExportQrsWorkbookItemsRow exportQrsWorkbookItemsRow = (ExportQrsWorkbookItemsRow) o;
    return Objects.equals(this.itemSequence, exportQrsWorkbookItemsRow.itemSequence) &&
        Objects.equals(this.testName, exportQrsWorkbookItemsRow.testName) &&
        Objects.equals(this.itemText, exportQrsWorkbookItemsRow.itemText) &&
        Objects.equals(this.testQuoteSCodelistCCode, exportQrsWorkbookItemsRow.testQuoteSCodelistCCode) &&
        Objects.equals(this.testQuoteSTermCCode, exportQrsWorkbookItemsRow.testQuoteSTermCCode) &&
        Objects.equals(this.testCodeQuoteSCodelistCCode, exportQrsWorkbookItemsRow.testCodeQuoteSCodelistCCode) &&
        Objects.equals(this.testCodeQuoteSTermCCode, exportQrsWorkbookItemsRow.testCodeQuoteSTermCCode) &&
        Objects.equals(this.subcategoryQuoteSCodelistCCode, exportQrsWorkbookItemsRow.subcategoryQuoteSCodelistCCode) &&
        Objects.equals(this.subcategoryQuoteSTermCCode, exportQrsWorkbookItemsRow.subcategoryQuoteSTermCCode) &&
        Objects.equals(this.evaluatorQuoteSCodelistCCode, exportQrsWorkbookItemsRow.evaluatorQuoteSCodelistCCode) &&
        Objects.equals(this.evaluatorQuoteSTermCCode, exportQrsWorkbookItemsRow.evaluatorQuoteSTermCCode) &&
        Objects.equals(this.freeFormResponseQuoteSDatatype, exportQrsWorkbookItemsRow.freeFormResponseQuoteSDatatype) &&
        Objects.equals(this.responseGroup, exportQrsWorkbookItemsRow.responseGroup);
  }

  @Override
  public int hashCode() {
    return Objects.hash(itemSequence, testName, itemText, testQuoteSCodelistCCode, testQuoteSTermCCode, testCodeQuoteSCodelistCCode, testCodeQuoteSTermCCode, subcategoryQuoteSCodelistCCode, subcategoryQuoteSTermCCode, evaluatorQuoteSCodelistCCode, evaluatorQuoteSTermCCode, freeFormResponseQuoteSDatatype, responseGroup);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportQrsWorkbookItemsRow {\n");
    
    sb.append("    itemSequence: ").append(toIndentedString(itemSequence)).append("\n");
    sb.append("    testName: ").append(toIndentedString(testName)).append("\n");
    sb.append("    itemText: ").append(toIndentedString(itemText)).append("\n");
    sb.append("    testQuoteSCodelistCCode: ").append(toIndentedString(testQuoteSCodelistCCode)).append("\n");
    sb.append("    testQuoteSTermCCode: ").append(toIndentedString(testQuoteSTermCCode)).append("\n");
    sb.append("    testCodeQuoteSCodelistCCode: ").append(toIndentedString(testCodeQuoteSCodelistCCode)).append("\n");
    sb.append("    testCodeQuoteSTermCCode: ").append(toIndentedString(testCodeQuoteSTermCCode)).append("\n");
    sb.append("    subcategoryQuoteSCodelistCCode: ").append(toIndentedString(subcategoryQuoteSCodelistCCode)).append("\n");
    sb.append("    subcategoryQuoteSTermCCode: ").append(toIndentedString(subcategoryQuoteSTermCCode)).append("\n");
    sb.append("    evaluatorQuoteSCodelistCCode: ").append(toIndentedString(evaluatorQuoteSCodelistCCode)).append("\n");
    sb.append("    evaluatorQuoteSTermCCode: ").append(toIndentedString(evaluatorQuoteSTermCCode)).append("\n");
    sb.append("    freeFormResponseQuoteSDatatype: ").append(toIndentedString(freeFormResponseQuoteSDatatype)).append("\n");
    sb.append("    responseGroup: ").append(toIndentedString(responseGroup)).append("\n");
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

