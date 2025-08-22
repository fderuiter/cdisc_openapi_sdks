package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassRefElement;
import org.openapitools.model.CdashigProductClassesRef;
import org.openapitools.model.CdashigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigProductClassesLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigProductClassesRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<CdashigClassRefElement> classes = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigProductClassesRef getSelf() {
    return self;
  }

  public void setSelf(CdashigProductClassesRef self) {
    this.self = self;
  }

  public CdashigProductClassesLinks self(CdashigProductClassesRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashigProductClassesLinks parentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get classes
   * @return classes
  **/
  @JsonProperty("classes")
  public List<CdashigClassRefElement> getClasses() {
    return classes;
  }

  public void setClasses(List<CdashigClassRefElement> classes) {
    this.classes = classes;
  }

  public CdashigProductClassesLinks classes(List<CdashigClassRefElement> classes) {
    this.classes = classes;
    return this;
  }

  public CdashigProductClassesLinks addClassesItem(CdashigClassRefElement classesItem) {
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
    CdashigProductClassesLinks cdashigProductClassesLinks = (CdashigProductClassesLinks) o;
    return Objects.equals(this.self, cdashigProductClassesLinks.self) &&
        Objects.equals(this.parentProduct, cdashigProductClassesLinks.parentProduct) &&
        Objects.equals(this.classes, cdashigProductClassesLinks.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigProductClassesLinks {\n");
    
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

