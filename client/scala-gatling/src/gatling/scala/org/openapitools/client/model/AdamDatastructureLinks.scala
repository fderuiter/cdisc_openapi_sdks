
package org.openapitools.client.model


case class AdamDatastructureLinks (
    _self: Option[AdamDatastructureRef],
    _parentProduct: Option[AdamProductRef],
    _priorVersion: Option[AdamDatastructureRef]
)
object AdamDatastructureLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
