
package org.openapitools.client.model


case class MdrSearchScopesGet200Response (
    _scopes: Option[List[DefaultSearchScopes]]
)
object MdrSearchScopesGet200Response {
    def toStringBody(var_scopes: Object) =
        s"""
        | {
        | "scopes":$var_scopes
        | }
        """.stripMargin
}
