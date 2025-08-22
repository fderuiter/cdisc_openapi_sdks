package org.openapitools.model;

import org.openapitools.model.AboutRef;
import org.openapitools.model.LastupdatedRef;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AboutLinks  {
  
  @ApiModelProperty(value = "")
  private AboutRef self;

  @ApiModelProperty(value = "")
  private LastupdatedRef lastupdated;
 /**
   * Get self
   * @return self
  **/
  @JsonProperty("self")
  public AboutRef getSelf() {
    return self;
  }

  public void setSelf(AboutRef self) {
    this.self = self;
  }

  public AboutLinks self(AboutRef self) {
    this.self = self;
    return this;
  }

 /**
   * Get lastupdated
   * @return lastupdated
  **/
  @JsonProperty("lastupdated")
  public LastupdatedRef getLastupdated() {
    return lastupdated;
  }

  public void setLastupdated(LastupdatedRef lastupdated) {
    this.lastupdated = lastupdated;
  }

  public AboutLinks lastupdated(LastupdatedRef lastupdated) {
    this.lastupdated = lastupdated;
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
    AboutLinks aboutLinks = (AboutLinks) o;
    return Objects.equals(this.self, aboutLinks.self) &&
        Objects.equals(this.lastupdated, aboutLinks.lastupdated);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, lastupdated);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AboutLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    lastupdated: ").append(toIndentedString(lastupdated)).append("\n");
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

