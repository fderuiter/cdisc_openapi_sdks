package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmigDatasetRefElement;
import org.openapitools.model.SdtmigDatasetsRef;
import org.openapitools.model.SdtmigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmigDatasetsLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmigDatasetsRef self;

  @ApiModelProperty(value = "")
  private SdtmigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmigDatasetsRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmigDatasetRefElement> datasets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmigDatasetsRef getSelf() {
    return self;
  }

  public void setSelf(SdtmigDatasetsRef self) {
    this.self = self;
  }

  public SdtmigDatasetsLinks self(SdtmigDatasetsRef self) {
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

  public SdtmigDatasetsLinks parentProduct(SdtmigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmigDatasetsRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmigDatasetsRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmigDatasetsLinks priorVersion(SdtmigDatasetsRef priorVersion) {
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

  public SdtmigDatasetsLinks datasets(List<SdtmigDatasetRefElement> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SdtmigDatasetsLinks addDatasetsItem(SdtmigDatasetRefElement datasetsItem) {
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
    SdtmigDatasetsLinks sdtmigDatasetsLinks = (SdtmigDatasetsLinks) o;
    return Objects.equals(this.self, sdtmigDatasetsLinks.self) &&
        Objects.equals(this.parentProduct, sdtmigDatasetsLinks.parentProduct) &&
        Objects.equals(this.priorVersion, sdtmigDatasetsLinks.priorVersion) &&
        Objects.equals(this.datasets, sdtmigDatasetsLinks.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmigDatasetsLinks {\n");
    
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

