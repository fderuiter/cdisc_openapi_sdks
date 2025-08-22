package org.openapitools.model;

import org.openapitools.model.AdamDatastructureRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVariableRef;
import org.openapitools.model.AdamVarsetRef;
import org.openapitools.model.RootCtCodelistRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamVariableLinks  {
  
  @ApiModelProperty(value = "")
  private AdamVariableRef self;

  @ApiModelProperty(value = "")
  private RootCtCodelistRef codelist;

  @ApiModelProperty(value = "")
  private AdamProductRef parentProduct;

  @ApiModelProperty(value = "")
  private AdamDatastructureRef parentDatastructure;

  @ApiModelProperty(value = "")
  private AdamVarsetRef parentVariableSet;

  @ApiModelProperty(value = "")
  private AdamVariableRef priorVersion;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamVariableRef getSelf() {
    return self;
  }

  public void setSelf(AdamVariableRef self) {
    this.self = self;
  }

  public AdamVariableLinks self(AdamVariableRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get codelist
   * @return codelist
  **/
  @JsonProperty("codelist")
  public RootCtCodelistRef getCodelist() {
    return codelist;
  }

  public void setCodelist(RootCtCodelistRef codelist) {
    this.codelist = codelist;
  }

  public AdamVariableLinks codelist(RootCtCodelistRef codelist) {
    this.codelist = codelist;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public AdamProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public AdamVariableLinks parentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get parentDatastructure
   * @return parentDatastructure
  **/
  @JsonProperty("parentDatastructure")
  public AdamDatastructureRef getParentDatastructure() {
    return parentDatastructure;
  }

  public void setParentDatastructure(AdamDatastructureRef parentDatastructure) {
    this.parentDatastructure = parentDatastructure;
  }

  public AdamVariableLinks parentDatastructure(AdamDatastructureRef parentDatastructure) {
    this.parentDatastructure = parentDatastructure;
    return this;
  }

 /**
   * Get parentVariableSet
   * @return parentVariableSet
  **/
  @JsonProperty("parentVariableSet")
  public AdamVarsetRef getParentVariableSet() {
    return parentVariableSet;
  }

  public void setParentVariableSet(AdamVarsetRef parentVariableSet) {
    this.parentVariableSet = parentVariableSet;
  }

  public AdamVariableLinks parentVariableSet(AdamVarsetRef parentVariableSet) {
    this.parentVariableSet = parentVariableSet;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamVariableRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamVariableRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamVariableLinks priorVersion(AdamVariableRef priorVersion) {
    this.priorVersion = priorVersion;
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
    AdamVariableLinks adamVariableLinks = (AdamVariableLinks) o;
    return Objects.equals(this.self, adamVariableLinks.self) &&
        Objects.equals(this.codelist, adamVariableLinks.codelist) &&
        Objects.equals(this.parentProduct, adamVariableLinks.parentProduct) &&
        Objects.equals(this.parentDatastructure, adamVariableLinks.parentDatastructure) &&
        Objects.equals(this.parentVariableSet, adamVariableLinks.parentVariableSet) &&
        Objects.equals(this.priorVersion, adamVariableLinks.priorVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, codelist, parentProduct, parentDatastructure, parentVariableSet, priorVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamVariableLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    codelist: ").append(toIndentedString(codelist)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    parentDatastructure: ").append(toIndentedString(parentDatastructure)).append("\n");
    sb.append("    parentVariableSet: ").append(toIndentedString(parentVariableSet)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
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

