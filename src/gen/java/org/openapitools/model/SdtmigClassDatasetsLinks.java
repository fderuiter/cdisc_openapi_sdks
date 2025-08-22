package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmigClassDatasetsRef;
import org.openapitools.model.SdtmigDatasetRefElement;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigClassDatasetsLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigClassDatasetsRef self;

  @ApiModelProperty(value = "")
  private SdtmigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmigClassDatasetsRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetRefElement> datasets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigClassDatasetsRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigClassDatasetsRef self) {
    this.self = self;
  }

  public SdtmigClassDatasetsLinks self(SdtmigClassDatasetsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public SdtmigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(SdtmigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public SdtmigClassDatasetsLinks parentProduct(SdtmigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigClassDatasetsRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigClassDatasetsRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigClassDatasetsLinks priorVersion(SdtmigClassDatasetsRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<SdtmigDatasetRefElement> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<SdtmigDatasetRefElement> datasets) {
    this.datasets = datasets;
  }

  public SdtmigClassDatasetsLinks datasets(List<SdtmigDatasetRefElement> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SdtmigClassDatasetsLinks addDatasetsItem(SdtmigDatasetRefElement datasetsItem) {
    this.datasets.add(datasetsItem);
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
    SdtmigClassDatasetsLinks sdtmigClassDatasetsLinks = (SdtmigClassDatasetsLinks) o;
    return Objects.equals(this.self, sdtmigClassDatasetsLinks.self) &&
        Objects.equals(this.parentProduct, sdtmigClassDatasetsLinks.parentProduct) &&
        Objects.equals(this.priorVersion, sdtmigClassDatasetsLinks.priorVersion) &&
        Objects.equals(this.datasets, sdtmigClassDatasetsLinks.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigClassDatasetsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    datasets: ").append(toIndentedString(datasets)).append("\n");
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

