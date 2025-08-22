package org.openapitools.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ScopeValues  {
  
  @ApiModelProperty(example = "1", value = "")
  private BigDecimal total;

  @ApiModelProperty(example = "false", value = "")
  private Boolean hasMore;

  @ApiModelProperty(example = "[\"Terminology\"]", value = "")
  private List<String> values = new ArrayList<>();
 /**
   * Get total
   * @return total
  **/
  @JsonProperty("total")
  public BigDecimal getTotal() {
    return total;
  }

  public void setTotal(BigDecimal total) {
    this.total = total;
  }

  public ScopeValues total(BigDecimal total) {
    this.total = total;
    return this;
  }

 /**
   * Get hasMore
   * @return hasMore
  **/
  @JsonProperty("hasMore")
  public Boolean getHasMore() {
    return hasMore;
  }

  public void setHasMore(Boolean hasMore) {
    this.hasMore = hasMore;
  }

  public ScopeValues hasMore(Boolean hasMore) {
    this.hasMore = hasMore;
    return this;
  }

 /**
   * Get values
   * @return values
  **/
  @JsonProperty("values")
  public List<String> getValues() {
    return values;
  }

  public void setValues(List<String> values) {
    this.values = values;
  }

  public ScopeValues values(List<String> values) {
    this.values = values;
    return this;
  }

  public ScopeValues addValuesItem(String valuesItem) {
    this.values.add(valuesItem);
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
    ScopeValues scopeValues = (ScopeValues) o;
    return Objects.equals(this.total, scopeValues.total) &&
        Objects.equals(this.hasMore, scopeValues.hasMore) &&
        Objects.equals(this.values, scopeValues.values);
  }

  @Override
  public int hashCode() {
    return Objects.hash(total, hasMore, values);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScopeValues {\n");
    
    sb.append("    total: ").append(toIndentedString(total)).append("\n");
    sb.append("    hasMore: ").append(toIndentedString(hasMore)).append("\n");
    sb.append("    values: ").append(toIndentedString(values)).append("\n");
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

