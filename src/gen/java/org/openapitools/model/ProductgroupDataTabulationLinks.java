package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ProductgroupRef;
import org.openapitools.model.SdtmProductRefElement;
import org.openapitools.model.SdtmigProductRefElement;
import org.openapitools.model.SendigProductRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductgroupDataTabulationLinks  {
  
  @ApiModelProperty(value = "")
  private ProductgroupRef self;

  @ApiModelProperty(value = "")
  private List<SdtmProductRefElement> sdtm = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SdtmigProductRefElement> sdtmig = new ArrayList<>();

  @ApiModelProperty(value = "")
  private List<SendigProductRefElement> sendig = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public ProductgroupRef getSelf() {
    return self;
  }

  public void setSelf(ProductgroupRef self) {
    this.self = self;
  }

  public ProductgroupDataTabulationLinks self(ProductgroupRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get sdtm
   * @return sdtm
  **/
  @JsonProperty("sdtm")
  public List<SdtmProductRefElement> getSdtm() {
    return sdtm;
  }

  public void setSdtm(List<SdtmProductRefElement> sdtm) {
    this.sdtm = sdtm;
  }

  public ProductgroupDataTabulationLinks sdtm(List<SdtmProductRefElement> sdtm) {
    this.sdtm = sdtm;
    return this;
  }

  public ProductgroupDataTabulationLinks addSdtmItem(SdtmProductRefElement sdtmItem) {
    this.sdtm.add(sdtmItem);
    return this;
  }

 /**
   * Get sdtmig
   * @return sdtmig
  **/
  @JsonProperty("sdtmig")
  public List<SdtmigProductRefElement> getSdtmig() {
    return sdtmig;
  }

  public void setSdtmig(List<SdtmigProductRefElement> sdtmig) {
    this.sdtmig = sdtmig;
  }

  public ProductgroupDataTabulationLinks sdtmig(List<SdtmigProductRefElement> sdtmig) {
    this.sdtmig = sdtmig;
    return this;
  }

  public ProductgroupDataTabulationLinks addSdtmigItem(SdtmigProductRefElement sdtmigItem) {
    this.sdtmig.add(sdtmigItem);
    return this;
  }

 /**
   * Get sendig
   * @return sendig
  **/
  @JsonProperty("sendig")
  public List<SendigProductRefElement> getSendig() {
    return sendig;
  }

  public void setSendig(List<SendigProductRefElement> sendig) {
    this.sendig = sendig;
  }

  public ProductgroupDataTabulationLinks sendig(List<SendigProductRefElement> sendig) {
    this.sendig = sendig;
    return this;
  }

  public ProductgroupDataTabulationLinks addSendigItem(SendigProductRefElement sendigItem) {
    this.sendig.add(sendigItem);
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
    ProductgroupDataTabulationLinks productgroupDataTabulationLinks = (ProductgroupDataTabulationLinks) o;
    return Objects.equals(this.self, productgroupDataTabulationLinks.self) &&
        Objects.equals(this.sdtm, productgroupDataTabulationLinks.sdtm) &&
        Objects.equals(this.sdtmig, productgroupDataTabulationLinks.sdtmig) &&
        Objects.equals(this.sendig, productgroupDataTabulationLinks.sendig);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, sdtm, sdtmig, sendig);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductgroupDataTabulationLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    sdtm: ").append(toIndentedString(sdtm)).append("\n");
    sb.append("    sdtmig: ").append(toIndentedString(sdtmig)).append("\n");
    sb.append("    sendig: ").append(toIndentedString(sendig)).append("\n");
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

