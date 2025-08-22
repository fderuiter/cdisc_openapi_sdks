package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AdamDatastructureVarsetsRef;
import org.openapitools.model.AdamProductRef;
import org.openapitools.model.AdamVarsetRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamDatastructureVarsetsLinks  {
  
  @ApiModelProperty(value = "")
  private AdamDatastructureVarsetsRef self;

  @ApiModelProperty(value = "")
  private AdamProductRef parentProduct;

  @ApiModelProperty(value = "")
  private AdamDatastructureVarsetsRef priorVersion;

  @ApiModelProperty(value = "")
  private List<AdamVarsetRefElement> analysisVariableSets = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamDatastructureVarsetsRef getSelf() {
    return self;
  }

  public void setSelf(AdamDatastructureVarsetsRef self) {
    this.self = self;
  }

  public AdamDatastructureVarsetsLinks self(AdamDatastructureVarsetsRef self) {
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

  public AdamDatastructureVarsetsLinks parentProduct(AdamProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamDatastructureVarsetsRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamDatastructureVarsetsRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamDatastructureVarsetsLinks priorVersion(AdamDatastructureVarsetsRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get analysisVariableSets
   * @return analysisVariableSets
  **/
  @JsonProperty("analysisVariableSets")
  public List<AdamVarsetRefElement> getAnalysisVariableSets() {
    return analysisVariableSets;
  }

  public void setAnalysisVariableSets(List<AdamVarsetRefElement> analysisVariableSets) {
    this.analysisVariableSets = analysisVariableSets;
  }

  public AdamDatastructureVarsetsLinks analysisVariableSets(List<AdamVarsetRefElement> analysisVariableSets) {
    this.analysisVariableSets = analysisVariableSets;
    return this;
  }

  public AdamDatastructureVarsetsLinks addAnalysisVariableSetsItem(AdamVarsetRefElement analysisVariableSetsItem) {
    this.analysisVariableSets.add(analysisVariableSetsItem);
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
    AdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks = (AdamDatastructureVarsetsLinks) o;
    return Objects.equals(this.self, adamDatastructureVarsetsLinks.self) &&
        Objects.equals(this.parentProduct, adamDatastructureVarsetsLinks.parentProduct) &&
        Objects.equals(this.priorVersion, adamDatastructureVarsetsLinks.priorVersion) &&
        Objects.equals(this.analysisVariableSets, adamDatastructureVarsetsLinks.analysisVariableSets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, priorVersion, analysisVariableSets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamDatastructureVarsetsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    analysisVariableSets: ").append(toIndentedString(analysisVariableSets)).append("\n");
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

