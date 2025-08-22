package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExportCtCodelist;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ExportCtTable  {
  
  @ApiModelProperty(value = "")
  private List<ExportCtCodelist> ct = new ArrayList<>();
 /**
   * Get ct
   * @return ct
  **/
  @JsonProperty("ct")
  public List<ExportCtCodelist> getCt() {
    return ct;
  }

  public void setCt(List<ExportCtCodelist> ct) {
    this.ct = ct;
  }

  public ExportCtTable ct(List<ExportCtCodelist> ct) {
    this.ct = ct;
    return this;
  }

  public ExportCtTable addCtItem(ExportCtCodelist ctItem) {
    this.ct.add(ctItem);
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
    ExportCtTable exportCtTable = (ExportCtTable) o;
    return Objects.equals(this.ct, exportCtTable.ct);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ct);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExportCtTable {\n");
    
    sb.append("    ct: ").append(toIndentedString(ct)).append("\n");
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

