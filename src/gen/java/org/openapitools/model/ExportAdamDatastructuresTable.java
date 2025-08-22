package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportAdamDatastructuresRow;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportAdamDatastructuresTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportAdamDatastructuresRow> datastructures = new ArrayList<>();
 /**
   * Get datastructures
   * @return datastructures
  **/
  @JsonProperty("datastructures")
  public List<ExportAdamDatastructuresRow> getDatastructures() {
    return datastructures;
  }

  public void setDatastructures(List<ExportAdamDatastructuresRow> datastructures) {
    this.datastructures = datastructures;
  }

  public ExportAdamDatastructuresTable datastructures(List<ExportAdamDatastructuresRow> datastructures) {
    this.datastructures = datastructures;
    return this;
  }

  public ExportAdamDatastructuresTable addDatastructuresItem(ExportAdamDatastructuresRow datastructuresItem) {
    this.datastructures.add(datastructuresItem);
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
    ExportAdamDatastructuresTable exportAdamDatastructuresTable = (ExportAdamDatastructuresTable) o;
    return Objects.equals(this.datastructures, exportAdamDatastructuresTable.datastructures);
  }

  @Override
  public int hashCode() {
    return Objects.hash(datastructures);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportAdamDatastructuresTable {\n");
    
    sb.append("    datastructures: ").append(toIndentedString(datastructures)).append("\n");
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

