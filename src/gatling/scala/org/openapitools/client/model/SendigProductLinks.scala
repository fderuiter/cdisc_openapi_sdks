
package org.openapitools.client.model


case class SendigProductLinks (
    _self: Option[SendigProductRef],
    _model: Option[SdtmProductRef],
    _priorVersion: Option[SendigProductRef]
)
object SendigProductLinks {
    def toStringBody(var_self: Object, var_model: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"model":$var_model,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
