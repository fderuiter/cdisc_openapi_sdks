package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashClassDomainsRef;
import org.openapitools.model.CdashDomainRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashClassDomainsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashClassDomainsRef self;

  @ApiModelProperty(value = "")
  private List<CdashDomainRefElement> domains = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashClassDomainsRef getSelf() {
    return self;
  }

  public void setSelf(CdashClassDomainsRef self) {
    this.self = self;
  }

  public CdashClassDomainsLinks self(CdashClassDomainsRef self) {
    this.self = self;
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

  public CdashClassDomainsLinks domains(List<CdashDomainRefElement> domains) {
    this.domains = domains;
    return this;
  }

  public CdashClassDomainsLinks addDomainsItem(CdashDomainRefElement domainsItem) {
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
    CdashClassDomainsLinks cdashClassDomainsLinks = (CdashClassDomainsLinks) o;
    return Objects.equals(this.self, cdashClassDomainsLinks.self) &&
        Objects.equals(this.domains, cdashClassDomainsLinks.domains);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, domains);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashClassDomainsLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

