package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportQrsCsvItemsRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportQrsItemsTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportQrsCsvItemsRow> items = new ArrayList<>();
 /**
   * Get items
   * @return items
  **/
  @JsonProperty("items")
  public List<ExportQrsCsvItemsRow> getItems() {
    return items;
  }

  public void setItems(List<ExportQrsCsvItemsRow> items) {
    this.items = items;
  }

  public ExportQrsItemsTable items(List<ExportQrsCsvItemsRow> items) {
    this.items = items;
    return this;
  }

  public ExportQrsItemsTable addItemsItem(ExportQrsCsvItemsRow itemsItem) {
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
    ExportQrsItemsTable exportQrsItemsTable = (ExportQrsItemsTable) o;
    return Objects.equals(this.items, exportQrsItemsTable.items);
  }

  @Override
  public int hashCode() {
    return Objects.hash(items);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportQrsItemsTable {\n");
    
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

