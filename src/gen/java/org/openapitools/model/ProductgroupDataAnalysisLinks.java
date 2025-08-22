package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AdamProductRefElement;
import org.openapitools.model.ProductgroupRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductgroupDataAnalysisLinks  {
  
  @ApiModelProperty(value = "")
  private ProductgroupRef self;

  @ApiModelProperty(value = "")
  private List<AdamProductRefElement> adam = new ArrayList<>();
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

  public ProductgroupDataAnalysisLinks self(ProductgroupRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get adam
   * @return adam
  **/
  @JsonProperty("adam")
  public List<AdamProductRefElement> getAdam() {
    return adam;
  }

  public void setAdam(List<AdamProductRefElement> adam) {
    this.adam = adam;
  }

  public ProductgroupDataAnalysisLinks adam(List<AdamProductRefElement> adam) {
    this.adam = adam;
    return this;
  }

  public ProductgroupDataAnalysisLinks addAdamItem(AdamProductRefElement adamItem) {
    this.adam.add(adamItem);
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
    ProductgroupDataAnalysisLinks productgroupDataAnalysisLinks = (ProductgroupDataAnalysisLinks) o;
    return Objects.equals(this.self, productgroupDataAnalysisLinks.self) &&
        Objects.equals(this.adam, productgroupDataAnalysisLinks.adam);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, adam);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductgroupDataAnalysisLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    adam: ").append(toIndentedString(adam)).append("\n");
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

