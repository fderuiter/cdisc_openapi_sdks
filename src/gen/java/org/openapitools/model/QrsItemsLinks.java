package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.QrsItemRefElement;
import org.openapitools.model.QrsItemsRef;
import org.openapitools.model.QrsProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QrsItemsLinks  {
  
  @ApiModelProperty(value = "")
  private QrsItemsRef self;

  @ApiModelProperty(value = "")
  private QrsProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<QrsItemRefElement> items = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public QrsItemsRef getSelf() {
    return self;
  }

  public void setSelf(QrsItemsRef self) {
    this.self = self;
  }

  public QrsItemsLinks self(QrsItemsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public QrsProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(QrsProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public QrsItemsLinks parentProduct(QrsProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get items
   * @return items
  **/
  @JsonProperty("items")
  public List<QrsItemRefElement> getItems() {
    return items;
  }

  public void setItems(List<QrsItemRefElement> items) {
    this.items = items;
  }

  public QrsItemsLinks items(List<QrsItemRefElement> items) {
    this.items = items;
    return this;
  }

  public QrsItemsLinks addItemsItem(QrsItemRefElement itemsItem) {
    this.items.add(itemsItem);
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
    QrsItemsLinks qrsItemsLinks = (QrsItemsLinks) o;
    return Objects.equals(this.self, qrsItemsLinks.self) &&
        Objects.equals(this.parentProduct, qrsItemsLinks.parentProduct) &&
        Objects.equals(this.items, qrsItemsLinks.items);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, items);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QrsItemsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
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

