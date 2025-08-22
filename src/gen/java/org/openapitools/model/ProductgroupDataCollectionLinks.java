package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashProductRefElement;
import org.openapitools.model.CdashigProductRefElement;
import org.openapitools.model.ProductgroupRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductgroupDataCollectionLinks  {
  
  @ApiModelProperty(value = "")
  private ProductgroupRef self;

  @ApiModelProperty(value = "")
  private List<CdashProductRefElement> cdash = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<CdashigProductRefElement> cdashig = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public ProductgroupRef getSelf() {
    return self;
  }

  public void setSelf(ProductgroupRef self) {
    this.self = self;
  }

  public ProductgroupDataCollectionLinks self(ProductgroupRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get cdash
   * @return cdash
  **/
  @JsonProperty("cdash")
  public List<CdashProductRefElement> getCdash() {
    return cdash;
  }

  public void setCdash(List<CdashProductRefElement> cdash) {
    this.cdash = cdash;
  }

  public ProductgroupDataCollectionLinks cdash(List<CdashProductRefElement> cdash) {
    this.cdash = cdash;
    return this;
  }

  public ProductgroupDataCollectionLinks addCdashItem(CdashProductRefElement cdashItem) {
    this.cdash.add(cdashItem);
    return this;
  }

 /**
   * Get cdashig
   * @return cdashig
  **/
  @JsonProperty("cdashig")
  public List<CdashigProductRefElement> getCdashig() {
    return cdashig;
  }

  public void setCdashig(List<CdashigProductRefElement> cdashig) {
    this.cdashig = cdashig;
  }

  public ProductgroupDataCollectionLinks cdashig(List<CdashigProductRefElement> cdashig) {
    this.cdashig = cdashig;
    return this;
  }

  public ProductgroupDataCollectionLinks addCdashigItem(CdashigProductRefElement cdashigItem) {
    this.cdashig.add(cdashigItem);
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
    ProductgroupDataCollectionLinks productgroupDataCollectionLinks = (ProductgroupDataCollectionLinks) o;
    return Objects.equals(this.self, productgroupDataCollectionLinks.self) &&
        Objects.equals(this.cdash, productgroupDataCollectionLinks.cdash) &&
        Objects.equals(this.cdashig, productgroupDataCollectionLinks.cdashig);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, cdash, cdashig);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductgroupDataCollectionLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    cdash: ").append(toIndentedString(cdash)).append("\n");
    sb.append("    cdashig: ").append(toIndentedString(cdashig)).append("\n");
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

