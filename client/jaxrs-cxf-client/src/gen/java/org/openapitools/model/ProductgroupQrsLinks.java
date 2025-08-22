package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ProductgroupRef;
import org.openapitools.model.QrsRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductgroupQrsLinks  {
  
  @ApiModelProperty(value = "")
  private ProductgroupRef self;

  @ApiModelProperty(value = "")
  private List<QrsRefElement> qrs = new ArrayList<>();
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

  public ProductgroupQrsLinks self(ProductgroupRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get qrs
   * @return qrs
  **/
  @JsonProperty("qrs")
  public List<QrsRefElement> getQrs() {
    return qrs;
  }

  public void setQrs(List<QrsRefElement> qrs) {
    this.qrs = qrs;
  }

  public ProductgroupQrsLinks qrs(List<QrsRefElement> qrs) {
    this.qrs = qrs;
    return this;
  }

  public ProductgroupQrsLinks addQrsItem(QrsRefElement qrsItem) {
    this.qrs.add(qrsItem);
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
    ProductgroupQrsLinks productgroupQrsLinks = (ProductgroupQrsLinks) o;
    return Objects.equals(this.self, productgroupQrsLinks.self) &&
        Objects.equals(this.qrs, productgroupQrsLinks.qrs);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, qrs);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductgroupQrsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    qrs: ").append(toIndentedString(qrs)).append("\n");
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

