package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AdamDatastructureVariablesRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVariableRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamDatastructureVariablesLinks  {
  
  @ApiModelProperty(value = "")
  private AdamDatastructureVariablesRef self;

  @ApiModelProperty(value = "")
  private AdamProductRef parentProduct;

  @ApiModelProperty(value = "")
  private AdamDatastructureVariablesRef priorVersion;

  @ApiModelProperty(value = "")
  private List<AdamVariableRefElement> analysisVariables = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamDatastructureVariablesRef getSelf() {
    return self;
  }

  public void setSelf(AdamDatastructureVariablesRef self) {
    this.self = self;
  }

  public AdamDatastructureVariablesLinks self(AdamDatastructureVariablesRef self) {
    this.self = self;
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

  public AdamDatastructureVariablesLinks parentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamDatastructureVariablesRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamDatastructureVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamDatastructureVariablesLinks priorVersion(AdamDatastructureVariablesRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get analysisVariables
   * @return analysisVariables
  **/
  @JsonProperty("analysisVariables")
  public List<AdamVariableRefElement> getAnalysisVariables() {
    return analysisVariables;
  }

  public void setAnalysisVariables(List<AdamVariableRefElement> analysisVariables) {
    this.analysisVariables = analysisVariables;
  }

  public AdamDatastructureVariablesLinks analysisVariables(List<AdamVariableRefElement> analysisVariables) {
    this.analysisVariables = analysisVariables;
    return this;
  }

  public AdamDatastructureVariablesLinks addAnalysisVariablesItem(AdamVariableRefElement analysisVariablesItem) {
    this.analysisVariables.add(analysisVariablesItem);
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
    AdamDatastructureVariablesLinks adamDatastructureVariablesLinks = (AdamDatastructureVariablesLinks) o;
    return Objects.equals(this.self, adamDatastructureVariablesLinks.self) &&
        Objects.equals(this.parentProduct, adamDatastructureVariablesLinks.parentProduct) &&
        Objects.equals(this.priorVersion, adamDatastructureVariablesLinks.priorVersion) &&
        Objects.equals(this.analysisVariables, adamDatastructureVariablesLinks.analysisVariables);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion, analysisVariables);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamDatastructureVariablesLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    analysisVariables: ").append(toIndentedString(analysisVariables)).append("\n");
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

