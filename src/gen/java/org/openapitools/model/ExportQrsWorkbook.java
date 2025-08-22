package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportQrsGeneral;
import org.openapitools.model.ExportQrsResponses;
import org.openapitools.model.ExportQrsWorkbookItemsRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportQrsWorkbook  {
  
  @ApiModelProperty(value = "")
  private ExportQrsGeneral self;

  @ApiModelProperty(value = "")
  private List<ExportQrsWorkbookItemsRow> items = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<ExportQrsResponses> responses = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public ExportQrsGeneral getSelf() {
    return self;
  }

  public void setSelf(ExportQrsGeneral self) {
    this.self = self;
  }

  public ExportQrsWorkbook self(ExportQrsGeneral self) {
    this.self = self;
    return this;
  }

 /**
   * Get items
   * @return items
  **/
  @JsonProperty("items")
  public List<ExportQrsWorkbookItemsRow> getItems() {
    return items;
  }

  public void setItems(List<ExportQrsWorkbookItemsRow> items) {
    this.items = items;
  }

  public ExportQrsWorkbook items(List<ExportQrsWorkbookItemsRow> items) {
    this.items = items;
    return this;
  }

  public ExportQrsWorkbook addItemsItem(ExportQrsWorkbookItemsRow itemsItem) {
    this.items.add(itemsItem);
    return this;
  }

 /**
   * Get responses
   * @return responses
  **/
  @JsonProperty("responses")
  public List<ExportQrsResponses> getResponses() {
    return responses;
  }

  public void setResponses(List<ExportQrsResponses> responses) {
    this.responses = responses;
  }

  public ExportQrsWorkbook responses(List<ExportQrsResponses> responses) {
    this.responses = responses;
    return this;
  }

  public ExportQrsWorkbook addResponsesItem(ExportQrsResponses responsesItem) {
    this.responses.add(responsesItem);
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
    ExportQrsWorkbook exportQrsWorkbook = (ExportQrsWorkbook) o;
    return Objects.equals(this.self, exportQrsWorkbook.self) &&
        Objects.equals(this.items, exportQrsWorkbook.items) &&
        Objects.equals(this.responses, exportQrsWorkbook.responses);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, items, responses);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportQrsWorkbook {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("    responses: ").append(toIndentedString(responses)).append("\n");
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

