package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Health  {
  
  @ApiModelProperty(value = "")
  private Boolean healthy;

  @ApiModelProperty(value = "")
  private Boolean ldapAuthenticationHealthy;

  @ApiModelProperty(value = "")
  private Boolean ldapAuthorizationHealthy;

  @ApiModelProperty(value = "")
  private Boolean databaseHealthy;

  @ApiModelProperty(value = "")
  private Boolean esHealthy;
 /**
   * Get healthy
   * @return healthy
  **/
  @JsonProperty("healthy")
  public Boolean getHealthy() {
    return healthy;
  }

  public void setHealthy(Boolean healthy) {
    this.healthy = healthy;
  }

  public Health healthy(Boolean healthy) {
    this.healthy = healthy;
    return this;
  }

 /**
   * Get ldapAuthenticationHealthy
   * @return ldapAuthenticationHealthy
  **/
  @JsonProperty("ldapAuthenticationHealthy")
  public Boolean getLdapAuthenticationHealthy() {
    return ldapAuthenticationHealthy;
  }

  public void setLdapAuthenticationHealthy(Boolean ldapAuthenticationHealthy) {
    this.ldapAuthenticationHealthy = ldapAuthenticationHealthy;
  }

  public Health ldapAuthenticationHealthy(Boolean ldapAuthenticationHealthy) {
    this.ldapAuthenticationHealthy = ldapAuthenticationHealthy;
    return this;
  }

 /**
   * Get ldapAuthorizationHealthy
   * @return ldapAuthorizationHealthy
  **/
  @JsonProperty("ldapAuthorizationHealthy")
  public Boolean getLdapAuthorizationHealthy() {
    return ldapAuthorizationHealthy;
  }

  public void setLdapAuthorizationHealthy(Boolean ldapAuthorizationHealthy) {
    this.ldapAuthorizationHealthy = ldapAuthorizationHealthy;
  }

  public Health ldapAuthorizationHealthy(Boolean ldapAuthorizationHealthy) {
    this.ldapAuthorizationHealthy = ldapAuthorizationHealthy;
    return this;
  }

 /**
   * Get databaseHealthy
   * @return databaseHealthy
  **/
  @JsonProperty("databaseHealthy")
  public Boolean getDatabaseHealthy() {
    return databaseHealthy;
  }

  public void setDatabaseHealthy(Boolean databaseHealthy) {
    this.databaseHealthy = databaseHealthy;
  }

  public Health databaseHealthy(Boolean databaseHealthy) {
    this.databaseHealthy = databaseHealthy;
    return this;
  }

 /**
   * Get esHealthy
   * @return esHealthy
  **/
  @JsonProperty("esHealthy")
  public Boolean getEsHealthy() {
    return esHealthy;
  }

  public void setEsHealthy(Boolean esHealthy) {
    this.esHealthy = esHealthy;
  }

  public Health esHealthy(Boolean esHealthy) {
    this.esHealthy = esHealthy;
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
    Health health = (Health) o;
    return Objects.equals(this.healthy, health.healthy) &&
        Objects.equals(this.ldapAuthenticationHealthy, health.ldapAuthenticationHealthy) &&
        Objects.equals(this.ldapAuthorizationHealthy, health.ldapAuthorizationHealthy) &&
        Objects.equals(this.databaseHealthy, health.databaseHealthy) &&
        Objects.equals(this.esHealthy, health.esHealthy);
  }

  @Override
  public int hashCode() {
    return Objects.hash(healthy, ldapAuthenticationHealthy, ldapAuthorizationHealthy, databaseHealthy, esHealthy);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Health {\n");
    
    sb.append("    healthy: ").append(toIndentedString(healthy)).append("\n");
    sb.append("    ldapAuthenticationHealthy: ").append(toIndentedString(ldapAuthenticationHealthy)).append("\n");
    sb.append("    ldapAuthorizationHealthy: ").append(toIndentedString(ldapAuthorizationHealthy)).append("\n");
    sb.append("    databaseHealthy: ").append(toIndentedString(databaseHealthy)).append("\n");
    sb.append("    esHealthy: ").append(toIndentedString(esHealthy)).append("\n");
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

