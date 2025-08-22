package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.DefaultSearchScopes;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class MdrSearchScopesGet200Response  {
  
  @ApiModelProperty(value = "")
  private List<DefaultSearchScopes> scopes = new ArrayList<>();
 /**
   * Get scopes
   * @return scopes
  **/
  @JsonProperty("scopes")
  public List<DefaultSearchScopes> getScopes() {
    return scopes;
  }

  public void setScopes(List<DefaultSearchScopes> scopes) {
    this.scopes = scopes;
  }

  public MdrSearchScopesGet200Response scopes(List<DefaultSearchScopes> scopes) {
    this.scopes = scopes;
    return this;
  }

  public MdrSearchScopesGet200Response addScopesItem(DefaultSearchScopes scopesItem) {
    this.scopes.add(scopesItem);
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
    MdrSearchScopesGet200Response mdrSearchScopesGet200Response = (MdrSearchScopesGet200Response) o;
    return Objects.equals(this.scopes, mdrSearchScopesGet200Response.scopes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scopes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MdrSearchScopesGet200Response {\n");
    
    sb.append("    scopes: ").append(toIndentedString(scopes)).append("\n");
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

