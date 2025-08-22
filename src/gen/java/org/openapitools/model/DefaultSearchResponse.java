package org.openapitools.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.DefaultSearchResponseHitsInner;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DefaultSearchResponse  {
  
  @ApiModelProperty(value = "")
  private List<DefaultSearchResponseHitsInner> hits = new ArrayList<>();

  @ApiModelProperty(example = "1", value = "")
  private BigDecimal totalHits;
 /**
   * Get hits
   * @return hits
  **/
  @JsonProperty("hits")
  public List<DefaultSearchResponseHitsInner> getHits() {
    return hits;
  }

  public void setHits(List<DefaultSearchResponseHitsInner> hits) {
    this.hits = hits;
  }

  public DefaultSearchResponse hits(List<DefaultSearchResponseHitsInner> hits) {
    this.hits = hits;
    return this;
  }

  public DefaultSearchResponse addHitsItem(DefaultSearchResponseHitsInner hitsItem) {
    this.hits.add(hitsItem);
    return this;
  }

 /**
   * Get totalHits
   * @return totalHits
  **/
  @JsonProperty("totalHits")
  public BigDecimal getTotalHits() {
    return totalHits;
  }

  public void setTotalHits(BigDecimal totalHits) {
    this.totalHits = totalHits;
  }

  public DefaultSearchResponse totalHits(BigDecimal totalHits) {
    this.totalHits = totalHits;
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
    DefaultSearchResponse defaultSearchResponse = (DefaultSearchResponse) o;
    return Objects.equals(this.hits, defaultSearchResponse.hits) &&
        Objects.equals(this.totalHits, defaultSearchResponse.totalHits);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hits, totalHits);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DefaultSearchResponse {\n");
    
    sb.append("    hits: ").append(toIndentedString(hits)).append("\n");
    sb.append("    totalHits: ").append(toIndentedString(totalHits)).append("\n");
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

