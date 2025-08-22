package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainFieldRefElement;
import org.openapitools.model.CdashigDomainFieldsRef;
import org.openapitools.model.CdashigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigDomainFieldsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigDomainFieldsRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<CdashigDomainFieldRefElement> fields = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigDomainFieldsRef getSelf() {
    return self;
  }

  public void setSelf(CdashigDomainFieldsRef self) {
    this.self = self;
  }

  public CdashigDomainFieldsLinks self(CdashigDomainFieldsRef self) {
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

  public CdashigDomainFieldsLinks parentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public CdashigClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public CdashigDomainFieldsLinks parentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<CdashigDomainFieldRefElement> getFields() {
    return fields;
  }

  public void setFields(List<CdashigDomainFieldRefElement> fields) {
    this.fields = fields;
  }

  public CdashigDomainFieldsLinks fields(List<CdashigDomainFieldRefElement> fields) {
    this.fields = fields;
    return this;
  }

  public CdashigDomainFieldsLinks addFieldsItem(CdashigDomainFieldRefElement fieldsItem) {
    this.fields.add(fieldsItem);
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
    CdashigDomainFieldsLinks cdashigDomainFieldsLinks = (CdashigDomainFieldsLinks) o;
    return Objects.equals(this.self, cdashigDomainFieldsLinks.self) &&
        Objects.equals(this.parentProduct, cdashigDomainFieldsLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashigDomainFieldsLinks.parentClass) &&
        Objects.equals(this.fields, cdashigDomainFieldsLinks.fields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, fields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigDomainFieldsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    fields: ").append(toIndentedString(fields)).append("\n");
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

