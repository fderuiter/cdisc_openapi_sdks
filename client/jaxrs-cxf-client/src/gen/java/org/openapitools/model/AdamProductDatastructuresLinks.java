package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AdamDatastructureRefElement;
import org.openapitools.model.AdamProductDatastructuresRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AdamProductDatastructuresLinks  {
  
  @ApiModelProperty(value = "")
  private AdamProductDatastructuresRef self;

  @ApiModelProperty(value = "")
  private AdamProductDatastructuresRef priorVersion;

  @ApiModelProperty(value = "")
  private List<AdamDatastructureRefElement> dataStructures = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AdamProductDatastructuresRef getSelf() {
    return self;
  }

  public void setSelf(AdamProductDatastructuresRef self) {
    this.self = self;
  }

  public AdamProductDatastructuresLinks self(AdamProductDatastructuresRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get priorVersion
   * @return priorVersion
  **/
  @JsonProperty("priorVersion")
  public AdamProductDatastructuresRef getPriorVersion() {
    return priorVersion;
  }

  public void setPriorVersion(AdamProductDatastructuresRef priorVersion) {
    this.priorVersion = priorVersion;
  }

  public AdamProductDatastructuresLinks priorVersion(AdamProductDatastructuresRef priorVersion) {
    this.priorVersion = priorVersion;
    return this;
  }

 /**
   * Get dataStructures
   * @return dataStructures
  **/
  @JsonProperty("dataStructures")
  public List<AdamDatastructureRefElement> getDataStructures() {
    return dataStructures;
  }

  public void setDataStructures(List<AdamDatastructureRefElement> dataStructures) {
    this.dataStructures = dataStructures;
  }

  public AdamProductDatastructuresLinks dataStructures(List<AdamDatastructureRefElement> dataStructures) {
    this.dataStructures = dataStructures;
    return this;
  }

  public AdamProductDatastructuresLinks addDataStructuresItem(AdamDatastructureRefElement dataStructuresItem) {
    this.dataStructures.add(dataStructuresItem);
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
    AdamProductDatastructuresLinks adamProductDatastructuresLinks = (AdamProductDatastructuresLinks) o;
    return Objects.equals(this.self, adamProductDatastructuresLinks.self) &&
        Objects.equals(this.priorVersion, adamProductDatastructuresLinks.priorVersion) &&
        Objects.equals(this.dataStructures, adamProductDatastructuresLinks.dataStructures);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, priorVersion, dataStructures);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdamProductDatastructuresLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    priorVersion: ").append(toIndentedString(priorVersion)).append("\n");
    sb.append("    dataStructures: ").append(toIndentedString(dataStructures)).append("\n");
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

