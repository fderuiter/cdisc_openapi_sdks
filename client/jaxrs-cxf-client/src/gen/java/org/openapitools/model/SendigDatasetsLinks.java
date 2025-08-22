package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.SendigDatasetRefElement;
import org.openapitools.model.SendigDatasetsRef;
import org.openapitools.model.SendigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SendigDatasetsLinks  {
  
  @ApiModelProperty(value = "")
  private SendigDatasetsRef self;

  @ApiModelProperty(value = "")
  private SendigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<SendigDatasetRefElement> datasets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public SendigDatasetsRef getSelf() {
    return self;
  }

  public void setSelf(SendigDatasetsRef self) {
    this.self = self;
  }

  public SendigDatasetsLinks self(SendigDatasetsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public SendigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(SendigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public SendigDatasetsLinks parentProduct(SendigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get datasets
   * @return datasets
  **/
  @JsonProperty("datasets")
  public List<SendigDatasetRefElement> getDatasets() {
    return datasets;
  }

  public void setDatasets(List<SendigDatasetRefElement> datasets) {
    this.datasets = datasets;
  }

  public SendigDatasetsLinks datasets(List<SendigDatasetRefElement> datasets) {
    this.datasets = datasets;
    return this;
  }

  public SendigDatasetsLinks addDatasetsItem(SendigDatasetRefElement datasetsItem) {
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
    SendigDatasetsLinks sendigDatasetsLinks = (SendigDatasetsLinks) o;
    return Objects.equals(this.self, sendigDatasetsLinks.self) &&
        Objects.equals(this.parentProduct, sendigDatasetsLinks.parentProduct) &&
        Objects.equals(this.datasets, sendigDatasetsLinks.datasets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, datasets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendigDatasetsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
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

