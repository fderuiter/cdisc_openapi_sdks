package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassRef;
import org.openapitools.model.CdashDomainFieldRefElement;
import org.openapitools.model.CdashDomainFieldsRef;
import org.openapitools.model.CdashProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashDomainFieldsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashDomainFieldsRef self;

  @ApiModelProperty(value = "")
  private CdashProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashClassRef parentClass;

  @ApiModelProperty(value = "")
  private List<CdashDomainFieldRefElement> fields = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashDomainFieldsRef getSelf() {
    return self;
  }

  public void setSelf(CdashDomainFieldsRef self) {
    this.self = self;
  }

  public CdashDomainFieldsLinks self(CdashDomainFieldsRef self) {
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

  public CdashDomainFieldsLinks parentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentClass
   * @return parentClass
  **/
  @JsonProperty("parentClass")
  public CdashClassRef getParentClass() {
    return parentClass;
  }

  public void setParentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
  }

  public CdashDomainFieldsLinks parentClass(CdashClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<CdashDomainFieldRefElement> getFields() {
    return fields;
  }

  public void setFields(List<CdashDomainFieldRefElement> fields) {
    this.fields = fields;
  }

  public CdashDomainFieldsLinks fields(List<CdashDomainFieldRefElement> fields) {
    this.fields = fields;
    return this;
  }

  public CdashDomainFieldsLinks addFieldsItem(CdashDomainFieldRefElement fieldsItem) {
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
    CdashDomainFieldsLinks cdashDomainFieldsLinks = (CdashDomainFieldsLinks) o;
    return Objects.equals(this.self, cdashDomainFieldsLinks.self) &&
        Objects.equals(this.parentProduct, cdashDomainFieldsLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashDomainFieldsLinks.parentClass) &&
        Objects.equals(this.fields, cdashDomainFieldsLinks.fields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, fields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashDomainFieldsLinks {\n");
    
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

