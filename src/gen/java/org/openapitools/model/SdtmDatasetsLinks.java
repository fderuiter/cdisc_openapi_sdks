package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SdtmDatasetRefElement;
import org.openapitools.model.SdtmDatasetsRef;
import org.openapitools.model.SdtmProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SdtmDatasetsLinks  {
  
  @ApiModelProperty(value = "")
  private SdtmDatasetsRef self;

  @ApiModelProperty(value = "")
  private SdtmProductRef parentProduct;

  @ApiModelProperty(value = "")
  private SdtmDatasetsRef priorVersion;

  @ApiModelProperty(value = "")
  private List<SdtmDatasetRefElement> datasets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SdtmDatasetsRef getSelf() {
    return self;
  }

  public void setSelf(SdtmDatasetsRef self) {
    this.self = self;
  }

  public SdtmDatasetsLinks self(SdtmDatasetsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public SdtmProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(SdtmProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public SdtmDatasetsLinks parentProduct(SdtmProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public SdtmDatasetsRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(SdtmDatasetsRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public SdtmDatasetsLinks priorVersion(SdtmDatasetsRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<SdtmDatasetRefElement> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<SdtmDatasetRefElement> datasets) {
    this.datasets = datasets;
  }

  public SdtmDatasetsLinks datasets(List<SdtmDatasetRefElement> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SdtmDatasetsLinks addDatasetsItem(SdtmDatasetRefElement datasetsItem) {
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
    SdtmDatasetsLinks sdtmDatasetsLinks = (SdtmDatasetsLinks) o;
    return Objects.equals(this.self, sdtmDatasetsLinks.self) &&
        Objects.equals(this.parentProduct, sdtmDatasetsLinks.parentProduct) &&
        Objects.equals(this.priorVersion, sdtmDatasetsLinks.priorVersion) &&
        Objects.equals(this.datasets, sdtmDatasetsLinks.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SdtmDatasetsLinks {\n");
    
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

