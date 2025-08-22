
package org.openapitools.client.model


case class CdashProductLinks (
    _self: Option[CdashProductRef],
    _priorVersion: Option[CdashProductRef]
)
object CdashProductLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
