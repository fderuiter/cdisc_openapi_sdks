package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashDomainRefElement;
import org.openapitools.model.CdashProductDomainsRef;
import org.openapitools.model.CdashProductRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashProductDomainsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashProductDomainsRef self;

  @ApiModelProperty(value = "")
  private CdashProductRef parentProduct;

  @ApiModelProperty(value = "")
  private List<CdashDomainRefElement> domains = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashProductDomainsRef getSelf() {
    return self;
  }

  public void setSelf(CdashProductDomainsRef self) {
    this.self = self;
  }

  public CdashProductDomainsLinks self(CdashProductDomainsRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get parentProduct
   * @return parentProduct
  **/
  @JsonProperty("parentProduct")
  public CdashProductRef getParentProduct() {
    return parentProduct;
  }

  public void setParentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
  }

  public CdashProductDomainsLinks parentProduct(CdashProductRef parentProduct) {
    this.parentProduct = parentProduct;
    return this;
  }

 /**
   * Get domains
   * @return domains
  **/
  @JsonProperty("domains")
  public List<CdashDomainRefElement> getDomains() {
    return domains;
  }

  public void setDomains(List<CdashDomainRefElement> domains) {
    this.domains = domains;
  }

  public CdashProductDomainsLinks domains(List<CdashDomainRefElement> domains) {
    this.domains = domains;
    return this;
  }

  public CdashProductDomainsLinks addDomainsItem(CdashDomainRefElement domainsItem) {
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
    CdashProductDomainsLinks cdashProductDomainsLinks = (CdashProductDomainsLinks) o;
    return Objects.equals(this.self, cdashProductDomainsLinks.self) &&
        Objects.equals(this.parentProduct, cdashProductDomainsLinks.parentProduct) &&
        Objects.equals(this.domains, cdashProductDomainsLinks.domains);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, parentProduct, domains);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashProductDomainsLinks {\n");
    
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

