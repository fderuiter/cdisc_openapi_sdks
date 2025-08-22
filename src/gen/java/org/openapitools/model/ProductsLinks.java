package org.openapitools.model;

import org.openapitools.model.ProductgroupDataAnalysis;
import org.openapitools.model.ProductgroupDataCollection;
import org.openapitools.model.ProductgroupDataTabulation;
import org.openapitools.model.ProductgroupQrs;
import org.openapitools.model.ProductgroupTerminology;
import org.openapitools.model.ProductsRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductsLinks  {
  
  @ApiModelProperty(value = "")
  private ProductsRef self;

  @ApiModelProperty(value = "")
  private ProductgroupDataCollection dataCollection;

  @ApiModelProperty(value = "")
  private ProductgroupDataTabulation dataTabulation;

  @ApiModelProperty(value = "")
  private ProductgroupDataAnalysis dataAnalysis;

  @ApiModelProperty(value = "")
  private ProductgroupTerminology terminology;

  @ApiModelProperty(value = "")
  private ProductgroupQrs measure;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public ProductsRef getSelf() {
    return self;
  }

  public void setSelf(ProductsRef self) {
    this.self = self;
  }

  public ProductsLinks self(ProductsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get dataCollection
   * @return dataCollection
  **/
  @JsonProperty("data-collection")
  public ProductgroupDataCollection getDataCollection() {
    return dataCollection;
  }

  public void setDataCollection(ProductgroupDataCollection dataCollection) {
    this.dataCollection = dataCollection;
  }

  public ProductsLinks dataCollection(ProductgroupDataCollection dataCollection) {
    this.dataCollection = dataCollection;
    return this;
  }

 /**
   * Get dataTabulation
   * @return dataTabulation
  **/
  @JsonProperty("data-tabulation")
  public ProductgroupDataTabulation getDataTabulation() {
    return dataTabulation;
  }

  public void setDataTabulation(ProductgroupDataTabulation dataTabulation) {
    this.dataTabulation = dataTabulation;
  }

  public ProductsLinks dataTabulation(ProductgroupDataTabulation dataTabulation) {
    this.dataTabulation = dataTabulation;
    return this;
  }

 /**
   * Get dataAnalysis
   * @return dataAnalysis
  **/
  @JsonProperty("data-analysis")
  public ProductgroupDataAnalysis getDataAnalysis() {
    return dataAnalysis;
  }

  public void setDataAnalysis(ProductgroupDataAnalysis dataAnalysis) {
    this.dataAnalysis = dataAnalysis;
  }

  public ProductsLinks dataAnalysis(ProductgroupDataAnalysis dataAnalysis) {
    this.dataAnalysis = dataAnalysis;
    return this;
  }

 /**
   * Get terminology
   * @return terminology
  **/
  @JsonProperty("terminology")
  public ProductgroupTerminology getTerminology() {
    return terminology;
  }

  public void setTerminology(ProductgroupTerminology terminology) {
    this.terminology = terminology;
  }

  public ProductsLinks terminology(ProductgroupTerminology terminology) {
    this.terminology = terminology;
    return this;
  }

 /**
   * Get measure
   * @return measure
  **/
  @JsonProperty("measure")
  public ProductgroupQrs getMeasure() {
    return measure;
  }

  public void setMeasure(ProductgroupQrs measure) {
    this.measure = measure;
  }

  public ProductsLinks measure(ProductgroupQrs measure) {
    this.measure = measure;
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
    ProductsLinks productsLinks = (ProductsLinks) o;
    return Objects.equals(this.self, productsLinks.self) &&
        Objects.equals(this.dataCollection, productsLinks.dataCollection) &&
        Objects.equals(this.dataTabulation, productsLinks.dataTabulation) &&
        Objects.equals(this.dataAnalysis, productsLinks.dataAnalysis) &&
        Objects.equals(this.terminology, productsLinks.terminology) &&
        Objects.equals(this.measure, productsLinks.measure);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, dataCollection, dataTabulation, dataAnalysis, terminology, measure);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    dataCollection: ").append(toIndentedString(dataCollection)).append("\n");
    sb.append("    dataTabulation: ").append(toIndentedString(dataTabulation)).append("\n");
    sb.append("    dataAnalysis: ").append(toIndentedString(dataAnalysis)).append("\n");
    sb.append("    terminology: ").append(toIndentedString(terminology)).append("\n");
    sb.append("    measure: ").append(toIndentedString(measure)).append("\n");
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

