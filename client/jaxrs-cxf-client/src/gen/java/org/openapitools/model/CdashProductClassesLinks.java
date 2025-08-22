package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassRefElement;
import org.openapitools.model.CdashProductClassesRef;
import org.openapitools.model.CdashProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashProductClassesLinks  {
  
  @ApiModelProperty(value = "")
  private CdashProductClassesRef self;

  @ApiModelProperty(value = "")
  private CdashProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<CdashClassRefElement> classes = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashProductClassesRef getSelf() {
    return self;
  }

  public void setSelf(CdashProductClassesRef self) {
    this.self = self;
  }

  public CdashProductClassesLinks self(CdashProductClassesRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashProductClassesLinks parentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<CdashClassRefElement> getClasses() {
    return classes;
  }

  public void setClasses(List<CdashClassRefElement> classes) {
    this.classes = classes;
  }

  public CdashProductClassesLinks classes(List<CdashClassRefElement> classes) {
    this.classes = classes;
    return this;
  }

  public CdashProductClassesLinks addClassesItem(CdashClassRefElement classesItem) {
    this.classes.add(classesItem);
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
    CdashProductClassesLinks cdashProductClassesLinks = (CdashProductClassesLinks) o;
    return Objects.equals(this.self, cdashProductClassesLinks.self) &&
        Objects.equals(this.parentProduct, cdashProductClassesLinks.parentProduct) &&
        Objects.equals(this.classes, cdashProductClassesLinks.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashProductClassesLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

