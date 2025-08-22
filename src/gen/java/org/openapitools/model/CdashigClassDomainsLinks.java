package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CdashigClassDomainsRef;
import org.openapitools.model.CdashigDomainRefElement;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CdashigClassDomainsLinks  {
  
  @ApiModelProperty(value = "")
  private CdashigClassDomainsRef self;

  @ApiModelProperty(value = "")
  private List<CdashigDomainRefElement> domains = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CdashigClassDomainsRef getSelf() {
    return self;
  }

  public void setSelf(CdashigClassDomainsRef self) {
    this.self = self;
  }

  public CdashigClassDomainsLinks self(CdashigClassDomainsRef self) {
    this.self = self;
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

  public CdashigClassDomainsLinks domains(List<CdashigDomainRefElement> domains) {
    this.domains = domains;
    return this;
  }

  public CdashigClassDomainsLinks addDomainsItem(CdashigDomainRefElement domainsItem) {
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
    CdashigClassDomainsLinks cdashigClassDomainsLinks = (CdashigClassDomainsLinks) o;
    return Objects.equals(this.self, cdashigClassDomainsLinks.self) &&
        Objects.equals(this.domains, cdashigClassDomainsLinks.domains);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, domains);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CdashigClassDomainsLinks {\n");
    
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

