
package org.openapitools.client.model


case class SdtmProductLinks (
    _self: Option[SdtmProductRef],
    _priorVersion: Option[SdtmProductRef]
)
object SdtmProductLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
