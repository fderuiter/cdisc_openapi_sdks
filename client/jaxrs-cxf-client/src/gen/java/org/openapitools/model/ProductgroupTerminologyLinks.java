package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtPackageRefElement;
import org.openapitools.model.ProductgroupRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ProductgroupTerminologyLinks  {
  
  @ApiModelProperty(value = "")
  private ProductgroupRef self;

  @ApiModelProperty(value = "")
  private List<CtPackageRefElement> packages = new ArrayList<>();
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

  public ProductgroupTerminologyLinks self(ProductgroupRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get packages
   * @return packages
  **/
  @JsonProperty("packages")
  public List<CtPackageRefElement> getPackages() {
    return packages;
  }

  public void setPackages(List<CtPackageRefElement> packages) {
    this.packages = packages;
  }

  public ProductgroupTerminologyLinks packages(List<CtPackageRefElement> packages) {
    this.packages = packages;
    return this;
  }

  public ProductgroupTerminologyLinks addPackagesItem(CtPackageRefElement packagesItem) {
    this.packages.add(packagesItem);
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
    ProductgroupTerminologyLinks productgroupTerminologyLinks = (ProductgroupTerminologyLinks) o;
    return Objects.equals(this.self, productgroupTerminologyLinks.self) &&
        Objects.equals(this.packages, productgroupTerminologyLinks.packages);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, packages);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ProductgroupTerminologyLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    packages: ").append(toIndentedString(packages)).append("\n");
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

