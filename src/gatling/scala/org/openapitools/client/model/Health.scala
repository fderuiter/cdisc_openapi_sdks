
package org.openapitools.client.model


case class Health (
    _healthy: Option[Boolean],
    _ldapAuthenticationHealthy: Option[Boolean],
    _ldapAuthorizationHealthy: Option[Boolean],
    _databaseHealthy: Option[Boolean],
    _esHealthy: Option[Boolean]
)
object Health {
    def toStringBody(var_healthy: Object, var_ldapAuthenticationHealthy: Object, var_ldapAuthorizationHealthy: Object, var_databaseHealthy: Object, var_esHealthy: Object) =
        s"""
        | {
        | "healthy":$var_healthy,"ldapAuthenticationHealthy":$var_ldapAuthenticationHealthy,"ldapAuthorizationHealthy":$var_ldapAuthorizationHealthy,"databaseHealthy":$var_databaseHealthy,"esHealthy":$var_esHealthy
        | }
        """.stripMargin
}
