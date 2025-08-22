package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportQrsGeneral  {
  
  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String label;

  @ApiModelProperty(value = "")
  private String effectiveDate;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String type;

  @ApiModelProperty(value = "")
  private String categoryQuoteSCodelistCCode;

  @ApiModelProperty(value = "")
  private String categoryQuoteSTermCCode;
 /**
   * Get name
   * @return name
  **/
  @JsonProperty("Name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public ExportQrsGeneral name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get label
   * @return label
  **/
  @JsonProperty("Label")
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public ExportQrsGeneral label(String label) {
    this.label = label;
    return this;
  }

 /**
   * Get effectiveDate
   * @return effectiveDate
  **/
  @JsonProperty("Effective Date")
  public String getEffectiveDate() {
    return effectiveDate;
  }

  public void setEffectiveDate(String effectiveDate) {
    this.effectiveDate = effectiveDate;
  }

  public ExportQrsGeneral effectiveDate(String effectiveDate) {
    this.effectiveDate = effectiveDate;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("Description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public ExportQrsGeneral description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("Type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ExportQrsGeneral type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get categoryQuoteSCodelistCCode
   * @return categoryQuoteSCodelistCCode
  **/
  @JsonProperty("Category&#39;s Codelist C-Code")
  public String getCategoryQuoteSCodelistCCode() {
    return categoryQuoteSCodelistCCode;
  }

  public void setCategoryQuoteSCodelistCCode(String categoryQuoteSCodelistCCode) {
    this.categoryQuoteSCodelistCCode = categoryQuoteSCodelistCCode;
  }

  public ExportQrsGeneral categoryQuoteSCodelistCCode(String categoryQuoteSCodelistCCode) {
    this.categoryQuoteSCodelistCCode = categoryQuoteSCodelistCCode;
    return this;
  }

 /**
   * Get categoryQuoteSTermCCode
   * @return categoryQuoteSTermCCode
  **/
  @JsonProperty("Category&#39;s Term C-Code")
  public String getCategoryQuoteSTermCCode() {
    return categoryQuoteSTermCCode;
  }

  public void setCategoryQuoteSTermCCode(String categoryQuoteSTermCCode) {
    this.categoryQuoteSTermCCode = categoryQuoteSTermCCode;
  }

  public ExportQrsGeneral categoryQuoteSTermCCode(String categoryQuoteSTermCCode) {
    this.categoryQuoteSTermCCode = categoryQuoteSTermCCode;
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
    ExportQrsGeneral exportQrsGeneral = (ExportQrsGeneral) o;
    return Objects.equals(this.name, exportQrsGeneral.name) &&
        Objects.equals(this.label, exportQrsGeneral.label) &&
        Objects.equals(this.effectiveDate, exportQrsGeneral.effectiveDate) &&
        Objects.equals(this.description, exportQrsGeneral.description) &&
        Objects.equals(this.type, exportQrsGeneral.type) &&
        Objects.equals(this.categoryQuoteSCodelistCCode, exportQrsGeneral.categoryQuoteSCodelistCCode) &&
        Objects.equals(this.categoryQuoteSTermCCode, exportQrsGeneral.categoryQuoteSTermCCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, label, effectiveDate, description, type, categoryQuoteSCodelistCCode, categoryQuoteSTermCCode);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportQrsGeneral {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    effectiveDate: ").append(toIndentedString(effectiveDate)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    categoryQuoteSCodelistCCode: ").append(toIndentedString(categoryQuoteSCodelistCCode)).append("\n");
    sb.append("    categoryQuoteSTermCCode: ").append(toIndentedString(categoryQuoteSTermCCode)).append("\n");
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

