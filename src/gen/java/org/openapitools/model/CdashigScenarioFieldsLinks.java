package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassRef;
import org.openapitools.model.CdashigDomainRef;
import org.openapitools.model.CdashigProductRef;
import org.openapitools.model.CdashigScenarioFieldRefElement;
import org.openapitools.model.CdashigScenarioFieldsRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigScenarioFieldsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigScenarioFieldsRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private CdashigClassRef parentClass;

  @ApiModelProperty(value = "")
  private CdashigDomainRef parentDomain;

  @ApiModelProperty(value = "")
  private List<CdashigScenarioFieldRefElement> fields = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigScenarioFieldsRef getSelf() {
    return self;
  }

  public void setSelf(CdashigScenarioFieldsRef self) {
    this.self = self;
  }

  public CdashigScenarioFieldsLinks self(CdashigScenarioFieldsRef self) {
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

  public CdashigScenarioFieldsLinks parentProduct(CdashigProductRef parentProduct) {
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

  public CdashigScenarioFieldsLinks parentClass(CdashigClassRef parentClass) {
    this.parentClass = parentClass;
    return this;
  }

 /**
   * Get parentDomain
   * @return parentDomain
  **/
  @JsonProperty("parentDomain")
  public CdashigDomainRef getParentDomain() {
    return parentDomain;
  }

  public void setParentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
  }

  public CdashigScenarioFieldsLinks parentDomain(CdashigDomainRef parentDomain) {
    this.parentDomain = parentDomain;
    return this;
  }

 /**
   * Get fields
   * @return fields
  **/
  @JsonProperty("fields")
  public List<CdashigScenarioFieldRefElement> getFields() {
    return fields;
  }

  public void setFields(List<CdashigScenarioFieldRefElement> fields) {
    this.fields = fields;
  }

  public CdashigScenarioFieldsLinks fields(List<CdashigScenarioFieldRefElement> fields) {
    this.fields = fields;
    return this;
  }

  public CdashigScenarioFieldsLinks addFieldsItem(CdashigScenarioFieldRefElement fieldsItem) {
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
    CdashigScenarioFieldsLinks cdashigScenarioFieldsLinks = (CdashigScenarioFieldsLinks) o;
    return Objects.equals(this.self, cdashigScenarioFieldsLinks.self) &&
        Objects.equals(this.parentProduct, cdashigScenarioFieldsLinks.parentProduct) &&
        Objects.equals(this.parentClass, cdashigScenarioFieldsLinks.parentClass) &&
        Objects.equals(this.parentDomain, cdashigScenarioFieldsLinks.parentDomain) &&
        Objects.equals(this.fields, cdashigScenarioFieldsLinks.fields);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, parentClass, parentDomain, fields);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigScenarioFieldsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentClass: ").append(toIndentedString(parentClass)).append("\n");
    sb.append("    parentDomain: ").append(toIndentedString(parentDomain)).append("\n");
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

