package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.CtPackageRefElement;
import org.openapitools.model.CtPackagesRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CtPackagesLinks  {
  
  @ApiModelProperty(value = "")
  private CtPackagesRef self;

  @ApiModelProperty(value = "")
  private List<CtPackageRefElement> packages = new ArrayList<>();
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public CtPackagesRef getSelf() {
    return self;
  }

  public void setSelf(CtPackagesRef self) {
    this.self = self;
  }

  public CtPackagesLinks self(CtPackagesRef self) {
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

  public CtPackagesLinks packages(List<CtPackageRefElement> packages) {
    this.packages = packages;
    return this;
  }

  public CtPackagesLinks addPackagesItem(CtPackageRefElement packagesItem) {
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
    CtPackagesLinks ctPackagesLinks = (CtPackagesLinks) o;
    return Objects.equals(this.self, ctPackagesLinks.self) &&
        Objects.equals(this.packages, ctPackagesLinks.packages);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, packages);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CtPackagesLinks {\n");
    
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

