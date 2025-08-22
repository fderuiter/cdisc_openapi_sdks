
package org.openapitools.client.model


case class CdashigProductLinks (
    _self: Option[CdashigProductRef],
    _model: Option[CdashProductRef],
    _priorVersion: Option[CdashigProductRef]
)
object CdashigProductLinks {
    def toStringBody(var_self: Object, var_model: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"model":$var_model,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}
