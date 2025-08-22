package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigDomainRefElement;
import org.openapitools.model.CdashigProductDomainsRef;
import org.openapitools.model.CdashigProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigProductDomainsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigProductDomainsRef self;

  @ApiModelProperty(value = "")
  private CdashigProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<CdashigDomainRefElement> domains = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigProductDomainsRef getSelf() {
    return self;
  }

  public void setSelf(CdashigProductDomainsRef self) {
    this.self = self;
  }

  public CdashigProductDomainsLinks self(CdashigProductDomainsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashigProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashigProductDomainsLinks parentProduct(CdashigProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get domains
   * @return domains
  **/
  @JsonProperty("domains")
  public List<CdashigDomainRefElement> getDomains() {
    return domains;
  }

  public void setDomains(List<CdashigDomainRefElement> domains) {
    this.domains = domains;
  }

  public CdashigProductDomainsLinks domains(List<CdashigDomainRefElement> domains) {
    this.domains = domains;
    return this;
  }

  public CdashigProductDomainsLinks addDomainsItem(CdashigDomainRefElement domainsItem) {
    this.domains.add(domainsItem);
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
    CdashigProductDomainsLinks cdashigProductDomainsLinks = (CdashigProductDomainsLinks) o;
    return Objects.equals(this.self, cdashigProductDomainsLinks.self) &&
        Objects.equals(this.parentProduct, cdashigProductDomainsLinks.parentProduct) &&
        Objects.equals(this.domains, cdashigProductDomainsLinks.domains);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, domains);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigProductDomainsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    parentProduct: ").append(toIndentedString(parentProduct)).append("\n");
    sb.append("    domains: ").append(toIndentedString(domains)).append("\n");
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

