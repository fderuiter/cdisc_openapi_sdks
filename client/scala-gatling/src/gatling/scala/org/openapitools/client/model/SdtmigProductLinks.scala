
package org.openapitools.client.model


case class SdtmigProductLinks (
    _self: Option[SdtmigProductRef],
    _model: Option[SdtmProductRef],
    _priorVersion: Option[SdtmigProductRef]
)
object SdtmigProductLinks {
    def toStringBody(var_self: Object, var_model: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"model":$var_model,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
