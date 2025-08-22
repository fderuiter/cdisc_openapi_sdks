
package org.openapitools.client.model


case class CdashClassLinks (
    _self: Option[CdashClassRef],
    _parentProduct: Option[CdashProductRef],
    _priorVersion: Option[CdashClassRef]
)
object CdashClassLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
